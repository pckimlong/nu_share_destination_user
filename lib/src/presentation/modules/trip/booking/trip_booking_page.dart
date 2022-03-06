import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:auto_route/auto_route.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/constants.dart';
import '../../../../domain/domain.dart';
import '../../../core/app_styles.dart';
import '../../../routes/router.gr.dart';
import '../../../widgets/circle_location_button.dart';
import '../../../widgets/location_pin_widget.dart';
import '../../../widgets/my_elevated_button.dart';
import 'trip_booking_provider.dart';

part 'widgets/actions_tile_bar_widget.dart';
part 'widgets/book_now_button.dart';
part 'widgets/google_map_widget.dart';
part 'widgets/location_pin_widget.dart';
part 'widgets/note_to_driver_button.dart';
// part 'widgets/where_to_tile_widget.dart';
part 'widgets/origin_address_name_widget.dart';
part 'widgets/vehicle_tile_widget.dart';

class TripBookingPage extends ConsumerWidget {
  const TripBookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(tripBookingController.notifier);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Pickup Location',
          style: TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Stack(
              children: [
                const _MapWidget(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 12, top: 12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                      ),
                      child: const Center(child: _OriginAddressWidget()),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: CircleLocationButton(
                          onTap: () async {
                            await controller.mapEventToState(
                              const TripBookingEvent.moveToMyLocation(),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const Center(child: _LocationPinWidget()),
              ],
            ),
          ),
          const _ActionCard(),
        ],
      ),
    );
  }
}

class _ActionCard extends StatelessWidget {
  const _ActionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(4, 0, 4, 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppStyles.borderRadiusValue),
          topRight: Radius.circular(AppStyles.borderRadiusValue),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 0.1,
            blurRadius: 10,
            offset: Offset(-3, 0),
            blurStyle: BlurStyle.solid,
          ),
        ],
      ),
      child: Column(
        children: const [
          // _WhereToTileWidget(),
          Divider(height: 0),
          _VehicleTileWidget(),
          Divider(height: 0),
          _ActionsTileBar(),
          SizedBox(height: 4),
          _BookNowButton(),
        ],
      ),
    );
  }
}

// class _GoogleMap extends ConsumerWidget {
//   const _GoogleMap({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final initialCamera = LatLng(
//       DomainValues.initialMapPoint.latitude,
//       DomainValues.initialMapPoint.longitude,
//     );

//     final stateController = ref.watch(tripBookingController.notifier);

//     return GoogleMap(
//       initialCameraPosition: CameraPosition(
//         zoom: DomainValues.initialMapZoom,
//         target: initialCamera,
//       ),
//       onMapCreated: (controller) async {
//         stateController.mapEventToState(
//           BookingEvent.initializeMapController(controller),
//         );
//       },
//       onCameraMove: (pos) {
//         final coor = pos.target;
//         stateController.mapEventToState(
//           BookingEvent.onMapMoved(
//             Coordinate(
//               coor.latitude,
//               coor.longitude,
//             ),
//           ),
//         );
//       },
//       onCameraIdle: () async {
//         await stateController.mapEventToState(
//           const BookingEvent.updateOriginPosition(),
//         );
//       },
//       mapToolbarEnabled: true,
//       myLocationEnabled: true,
//       zoomControlsEnabled: false,
//       myLocationButtonEnabled: false,
//     );
//   }
// }
