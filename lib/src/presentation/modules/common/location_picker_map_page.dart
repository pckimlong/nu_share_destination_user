import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/core/constants.dart';
import '../../../domain/core/entities/coordinate.dart';
import '../../../domain/core/entities/location_address.dart';
import '../../_core/service_providers.dart';
import '../../widgets/circle_location_button.dart';
import '../../widgets/location_pin_widget.dart';
import '../../widgets/my_elevated_button.dart';

class LocationPickerFromMapPage extends ConsumerStatefulWidget {
  const LocationPickerFromMapPage({
    Key? key,
    this.initial,
  }) : super(key: key);

  final LocationAddress? initial;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LocationPickerFromMapPageState();
}

class _LocationPickerFromMapPageState
    extends ConsumerState<LocationPickerFromMapPage> {
  late final GoogleMapController _mapController;

  String _address = "Loading...";

  /// Current point on map
  LatLng _currentLatLng = LatLng(
    DomainValues.initialMapPoint.latitude,
    DomainValues.initialMapPoint.longitude,
  );

  @override
  void initState() {
    final initialCoor = widget.initial?.locationPoint.coordinate;
    if (initialCoor != null) {
      _address = widget.initial!.address;
      _currentLatLng = LatLng(initialCoor.latitude, initialCoor.longitude);
    } else {
      _updateAddress();
    }

    super.initState();
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  Future<void> _updateAddress() async {
    final address = await ref
        .read(locationServiceProvider)
        .getAddressByCoordinate(Coordinate(
          _currentLatLng.latitude,
          _currentLatLng.longitude,
        ));
    // address.fold(
    //   (l) => '...',
    //   (r) => setState(
    //     () => _address = r.fold(() => 'Unknown', (a) => a.address),
    //   ),
    // );
  }

  Future<void> _moveToMyLocation() async {
    // final myLocation = await ref.read(locationServiceProvider).getMyAddress();
    // myLocation.fold(
    //   (l) => null,
    //   (r) => _mapController.animateCamera(
    //     CameraUpdate.newCameraPosition(
    //       CameraPosition(
    //         target: LatLng(
    //           r.coordinate.latitude,
    //           r.coordinate.longitude,
    //         ),
    //         zoom: DomainValues.mapPointZoom,
    //       ),
    //     ),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Pick on Map'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _currentLatLng,
              zoom: DomainValues.mapPointZoom,
            ),
            myLocationButtonEnabled: false,
            myLocationEnabled: true,
            zoomControlsEnabled: false,
            onCameraMove: (camera) => _currentLatLng = camera.target,
            onCameraIdle: () async => _updateAddress(),
            onMapCreated: (controller) async {
              _mapController = controller;
              // Move to user location if no initial point
              if (widget.initial == null) {
                await _moveToMyLocation();
              }
            },
          ),
          const Center(
            child: LocationPinWidget(isLoading: false),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.white70),
                child: Text(
                  _address,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16, bottom: 6),
                    child: CircleLocationButton(
                      onTap: () async => await _moveToMyLocation(),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: SizedBox(
                      width: double.infinity,
                      height: 46,
                      child: MyElevatedButton(
                        label: 'Confirm',
                        onTap: () async {
                          // final result = LocationAddress(
                          //   address: _address,
                          //   locationPoint: await ref
                          //       .read(locationServiceProvider)
                          //       .getAddressByCoordinate(
                          //         Coordinate(
                          //           _currentLatLng.latitude,
                          //           _currentLatLng.longitude,
                          //         ),
                          //       ).then((value) => null),
                          //   time: null,
                          // );

                          // context.router.pop(result);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
