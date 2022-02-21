import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'trip_booking/trip_booking_event.dart';
import 'trip_event.dart';

import 'trip_state.dart';
import '../../domain/driver/i_driver_repository.dart';
import '../../domain/trip/i_trip_repository.dart';
import '../../domain/user/i_user_repository.dart';

class TripControllerNotifier extends StateNotifier<Option<TripState>> {
  TripControllerNotifier(
    this._tripRepository,
    this._userRepository,
    this._driverRepository,
  ) : super(none());

  final ITripRepository _tripRepository;
  final IUserRepository _userRepository;
  final IDriverRepository _driverRepository;

  Future mapEventToState(TripBookingEvent event) async {}
}
