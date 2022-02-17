import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:nu_share_destination_user/src/application/trip/trip_booking/trip_booking_event.dart';
import 'package:nu_share_destination_user/src/application/trip/trip_booking/trip_booking_state.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/driver/i_driver_repository.dart';
import 'package:nu_share_destination_user/src/domain/location/i_location_service.dart';
import 'package:nu_share_destination_user/src/domain/trip/i_trip_repository.dart';
import 'package:nu_share_destination_user/src/domain/user/i_user_repository.dart';

class TripBookingNotifier extends StateNotifier<TripBookingState> {
  TripBookingNotifier(
    this._locationService,
    this._driverRepository,
    this._userRepository,
    this._tripRepository,
  ) : super(TripBookingState.initial()) {
    _moveToMyLocation();
  }

  final ILocationService _locationService;
  final IDriverRepository _driverRepository;
  final IUserRepository _userRepository;
  final ITripRepository _tripRepository;

  Future mapEventToState(TripBookingEvent event) async {
    event.when(
      moveToMyLocation: _moveToMyLocation,
      changeOriginLocation: _updateOriginAddress,
      changeDestinationLocation: _changeDestination,
    );
  }

  Future<void> _changeDestination(Coordinate coordinate) async {
    state = state.copyWith(isLoading: true);

    final addressOrF =
        await _locationService.getAddressByCoordinate(coordinate);
    addressOrF.fold(
      (l) => state = state.copyWith(failure: some(l)),
      (address) => state = state.copyWith(definationLocation: some(address)),
    );

    state = state.copyWith(isLoading: false);
  }

  Future<void> _fetchNearbyDrivers(Coordinate coor) async {
    final driversOrFail =
        await _driverRepository.getAroundCoordinate(coordinate: coor);

    driversOrFail.fold(
      (fail) => state = state.copyWith(driverFailure: some(fail)),
      (drivers) => state = state.copyWith(nearbyDrivers: drivers),
    );
  }

  Future<void> _moveToMyLocation() async {
    state = state.copyWith(isLoading: true);

    final coorOrFailure = await _locationService.getMyCoordinate();
    coorOrFailure.fold(
      (l) => state = state.copyWith(failure: some(l)),
      (coor) => state = state.copyWith(myLocation: some(coor)),
    );
    state = state.copyWith(isLoading: false);
  }

  Future<void> _updateOriginAddress(Coordinate coor) async {
    state = state.copyWith(isLoading: true);

    /// First get location detail like address
    final addressOrF = await _locationService.getAddressByCoordinate(coor);
    addressOrF.fold(
      (l) => state = state.copyWith(failure: some(l)),
      (address) => state = state.copyWith(originLocation: some(address)),
    );

    /// Fetch all nearby driver around this location
    await _fetchNearbyDrivers(coor);

    state = state.copyWith(isLoading: false);
  }
}