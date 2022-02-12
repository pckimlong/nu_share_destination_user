import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/application/cache/last_coordinate/last_coordinate_controller.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/_core/enums/vehicle_types.dart';
import 'package:nu_share_destination_user/src/presentation/_core/common_provider.dart';
import 'package:nu_share_destination_user/src/presentation/_core/service_providers.dart';

part 'trip_booking_provider.dart';

class TripBookingPage extends ConsumerWidget {
  const TripBookingPage({
    Key? key,
    required this.vehicleTypes,
  }) : super(key: key);

  final VehicleTypes vehicleTypes;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick Location'),
      ),
      body: const _TripBookingPage(),
    );
  }
}

class _TripBookingPage extends StatefulHookConsumerWidget {
  const _TripBookingPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TripBookingPageState();
}

class _TripBookingPageState extends ConsumerState<_TripBookingPage> {
  late final GoogleMapController _mapController;
  late final LatLng _initialPos;

  @override
  void initState() {
    /// Get last coordinate from cache
    final cacheCoordinateOption = ref.read(_cacheCoordinateProvider);
    _initialPos = cacheCoordinateOption.fold(
      () => const LatLng(12.5, 105),
      (a) => LatLng(a.latitude, a.longitude),
    );
    super.initState();
  }

  Future<void> _handlePermission() async {}

  Future<void> _animateToUser() async {
    final pos = await ref.read(locationProvider).getLocation();

    _mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(pos.latitude!, pos.longitude!),
          zoom: 17.0,
        ),
      ),
    );
    ref.read(_cacheCoordinateProvider.notifier).save(
          Coordinate(
            pos.latitude!,
            pos.longitude!,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    print(_initialPos.toString());
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(
              _initialPos.latitude,
              _initialPos.longitude,
            ),
            zoom: 10,
          ),
          onMapCreated: (controller) async {
            _mapController = controller;
            await _animateToUser();
          },
          mapToolbarEnabled: true,
          trafficEnabled: true,
          myLocationEnabled: true,
        )
      ],
    );
  }
}
