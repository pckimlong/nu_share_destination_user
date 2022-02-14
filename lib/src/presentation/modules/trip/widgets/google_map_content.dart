import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/application/trip/booking/booking_event.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/presentation/modules/trip/booking/trip_booking_page.dart';

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

  LatLng _centerLatLgn = LatLng(
    DomainValues.initialMapPoint.latitude,
    DomainValues.initialMapPoint.longitude,
  );

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
        target: _centerLatLgn,
      ),
      onMapCreated: (controller) async {
        _mapController = controller;
        await _animateToUser();
      },
      onCameraMove: (_) {
        _centerLatLgn = _.target;
      },
      onCameraIdle: () async {
        await ref.read(bookControllerProvider.notifier).mapEventToState(
              BookingEvent.changeOriginPosition(
                Coordinate(
                  _centerLatLgn.latitude,
                  _centerLatLgn.longitude,
                ),
              ),
            );
      },
      mapToolbarEnabled: true,
      myLocationEnabled: true,
      zoomControlsEnabled: false,
      myLocationButtonEnabled: false,
    );
  }
}
