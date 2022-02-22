import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../domain/driver/vehicle_types.dart';
import 'booking/trip_booking_page.dart';
import 'cancel/trip_cancel_page.dart';
import 'finished/trip_finished_page.dart';
import 'picking/trip_picking_page.dart';
import 'progress/trip_in_progress_page.dart';
import 'trip_provider.dart';

class TripPage extends ConsumerWidget {
  const TripPage({
    Key? key,
    required this.vehicleTypes,
  }) : super(key: key);

  final VehicleTypes vehicleTypes;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const TripBookingPage();
    // final stateOption = ref.watch(tripController);

    // return Scaffold(
    //   resizeToAvoidBottomInset: false,
    //   body: stateOption.match(
    //     /// After booked and create trip request. State option become some()
    //     (tripState) {
    //       /// Change the screen depening on status of trip
    //       return tripState.tripStatus.when(
    //         exploring: () {},
    //         cancelled: () => const TripCancelPage(),
    //         picking: () => const TripPickingPage(),
    //         inProgress: () => const TripInProgressPage(),
    //         finished: () => const TripFinishedPage(),
    //       );
    //     },

    //     /// User not yet booking trip. This leave it none() option
    //     /// So show trip booking page
    //     () => const TripBookingPage(),
    //   ),
    // );
  }
}
