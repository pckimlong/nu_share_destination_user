import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:nu_share_destination_user/src/application/trip/trip_state.dart';
import 'package:nu_share_destination_user/src/domain/driver/i_driver_repository.dart';
import 'package:nu_share_destination_user/src/domain/trip/i_trip_repository.dart';
import 'package:nu_share_destination_user/src/domain/user/i_user_repository.dart';

class TripControllerNotifier extends StateNotifier<Option<TripState>> {
  TripControllerNotifier(
    this._tripRepository,
    this._userRepository,
    this._driverRepository,
  ) : super(none());

  final ITripRepository _tripRepository;
  final IUserRepository _userRepository;
  final IDriverRepository _driverRepository;
}
