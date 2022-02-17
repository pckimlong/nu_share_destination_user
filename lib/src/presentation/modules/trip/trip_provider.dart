import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/application/trip/booking/booking_controller.dart';
import 'package:nu_share_destination_user/src/application/trip/booking/booking_state.dart';
import 'package:nu_share_destination_user/src/application/trip/trip_controller.dart';
import 'package:nu_share_destination_user/src/application/trip/trip_state.dart';
import 'package:nu_share_destination_user/src/presentation/_providers/user_provider.dart';

import '../../_core/service_providers.dart';

/// For prepare data and collect info before save to server
// final bookingController =
//     StateNotifierProvider.autoDispose<BookingControllerNotifier, BookingState>(
//   (ref) {
//     final user = ref.watch(userControllerProvider);
//     final locationService = ref.watch(locationServiceProvider);
//     return BookingControllerNotifier(
//       userEntity: user.userOrCrash,
//       locationService: locationService,
//     );
//   },
// );

final tripController = StateNotifierProvider.autoDispose<TripControllerNotifier,
    Option<TripState>>(
  (ref) => TripControllerNotifier(
    ref.watch(tripReposProvider),
    ref.watch(userReposProvider),
    ref.watch(driverReposProvider),
  ),
);
