import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/_core/constants.dart';
import '../../../../domain/_core/enums/vehicle_types.dart';
import '../../../_core/common_provider.dart';

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

  Future<void> _animateToUser() async {
    final pos = await ref.read(locationProvider).getLocation();

    _mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(pos.latitude!, pos.longitude!),
          zoom: DomainValues.mapPointZoom,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(
            zoom: DomainValues.initialMapZoom,
            target: LatLng(
              DomainValues.initialMapPoint.latitude,
              DomainValues.initialMapPoint.longitude,
            ),
          ),
          onMapCreated: (controller) async {
            _mapController = controller;
            await _animateToUser();
          },
          mapToolbarEnabled: true,
          trafficEnabled: true,
          myLocationEnabled: true,
          zoomControlsEnabled: false,
          myLocationButtonEnabled: false,
        )
      ],
    );
  }
}
