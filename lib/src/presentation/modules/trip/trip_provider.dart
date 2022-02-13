import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/application/trip/trip_controller.dart';
import 'package:nu_share_destination_user/src/application/trip/trip_state.dart';

import '../../_core/service_providers.dart';

final tripController = StateNotifierProvider.autoDispose<TripControllerNotifier,
    Option<TripState>>(
  (ref) => TripControllerNotifier(
    ref.watch(tripReposProvider),
    ref.watch(userReposProvider),
    ref.watch(driverReposProvider),
  ),
);
