import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/_core/constants.dart';
import '../../../_core/common_provider.dart';

class GoogleMapWidget extends StatefulHookConsumerWidget {
  const GoogleMapWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends ConsumerState<GoogleMapWidget> {
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
    return GoogleMap(
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
      myLocationEnabled: true,
      zoomControlsEnabled: false,
      myLocationButtonEnabled: false,
    );
  }
}
