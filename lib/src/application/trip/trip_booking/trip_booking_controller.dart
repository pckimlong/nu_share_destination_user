import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/application/trip/trip_booking/trip_booking_event.dart';

import 'package:nu_share_destination_user/src/application/trip/trip_booking/trip_booking_state.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/location/i_location_service.dart';

import '../../../domain/core/entities/location_address.dart';

class TripBookingNotifier extends StateNotifier<TripBookingState> {
  TripBookingNotifier(
    this._locationService,
  ) : super(TripBookingState.initial()) {
    _moveToMyLocation();
  }

  final ILocationService _locationService;

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

  Future<void> _fetchNearbyDrivers(Coordinate coor) async {}

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

    final addressOrF = await _locationService.getAddressByCoordinate(coor);
    addressOrF.fold(
      (l) => state = state.copyWith(failure: some(l)),
      (address) => state = state.copyWith(originLocation: some(address)),
    );
    await _fetchNearbyDrivers(coor);
    await _changeDestination(coor.copyWith(latitude: coor.latitude + 0.001));

    state = state.copyWith(isLoading: false);
  }
}
