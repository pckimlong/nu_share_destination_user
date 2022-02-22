import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mock_data/mock_data.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/driver/domain/domain.dart';
import 'package:nu_share_destination_user/driver/presentation/core/core.dart';
import 'package:nu_share_destination_user/driver/presentation/widgets/location_pin_widget.dart';
import 'package:nu_share_destination_user/driver/presentation/widgets/my_textform_field.dart';
import 'package:nu_share_destination_user/src/domain/core/constants.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/location_detail.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/location_point.dart';
import 'package:nu_share_destination_user/src/domain/location/i_location_service.dart';

final _mockDriverProvider =
    StateNotifierProvider.autoDispose<_MockDriverNotifier, IList<DriverEntity>>(
        (ref) {
  return _MockDriverNotifier(
    ref.watch(driverReposProvider),
    ref.watch(locationServiceProvider),
  );
});

class _MockDriverNotifier extends StateNotifier<IList<DriverEntity>> {
  _MockDriverNotifier(this._repository, this._locationService)
      : super(<DriverEntity>[].lock) {
    _subscription?.cancel();
    _subscription = _repository.streamAll().listen((event) {
      state = event;
    });
  }

  final IDriverRepository _repository;
  final ILocationService _locationService;
  StreamSubscription<IList<DriverEntity>>? _subscription;

  double lat = DomainValues.initialMapPoint.latitude;
  double long = DomainValues.initialMapPoint.longitude;

  Future<void> create() async {
    final coor = Coordinate(lat, long);
    final old = state.lastOrNull;
    final oldLoc = old?.location.match(id, () => null);

    final driver = DriverEntity(
      id: null,
      fullname: mockName(),
      available: true,
      location: some(
        LocationDetail(
          locationPoint: LocationPoint(
            geoHash:
                _locationService.coordinateToGeoHash(coor).fold((l) => '', id),
            coordinate: coor,
          ),
          accuracy: oldLoc?.accuracy ?? 0 + 10,
          altitude: oldLoc?.altitude ?? 0 + 10,
          speed: oldLoc?.speed ?? 0 + 10,
          speedAccuracy: oldLoc?.speedAccuracy ?? 0 + 10,
          heading: oldLoc?.heading ?? 0 + 10,
          time: DateTime.now(),
        ),
      ),
      vehicleType: VehicleTypes.car,
      inProgressTrip: some(mockUUID()),
    );

    await _repository.createMockDriver(driver);
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}

class CreateMockDriverPage extends HookConsumerWidget {
  const CreateMockDriverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(_mockDriverProvider.notifier);

    final drivers = ref.watch(_mockDriverProvider);
    final makers = useMemoized<Map<MarkerId, Marker>>(() => {});

    useEffect(() {
      makers.clear();
      for (final driver in drivers) {
        final lat = driver.location.match(
          (t) => t.locationPoint.coordinate.latitude,
          () => 0.0,
        );
        final long = driver.location.match(
          (t) => t.locationPoint.coordinate.longitude,
          () => 0.0,
        );
        final id = MarkerId(driver.id.toString());
        makers[id] = Marker(
          markerId: id,
          position: LatLng(lat, long),
          infoWindow: InfoWindow(
            title: driver.fullname,
          ),
          icon: BitmapDescriptor.defaultMarker,
        );
      }
      return null;
    }, [drivers]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Fake Driver'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            markers: Set<Marker>.from(makers.values),
            initialCameraPosition: CameraPosition(
              target: LatLng(
                DomainValues.initialMapPoint.latitude,
                DomainValues.initialMapPoint.longitude,
              ),
              zoom: DomainValues.mapPointZoom,
            ),
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            onCameraMove: (pos) {
              controller.lat = pos.target.latitude;
              controller.long = pos.target.longitude;
            },
          ),
          const Center(child: LocationPinWidget(isLoading: false)),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () async {
              BotToast.showLoading();
              await controller.create();
              BotToast.closeAllLoading();
            },
            child: const Text('Add'),
          ),
        ),
      ),
    );
  }
}
