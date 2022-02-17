import 'package:dartz/dartz.dart' as d;
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/location_address.dart';
import 'package:nu_share_destination_user/src/domain/driver/driver_entity.dart';
import 'package:nu_share_destination_user/src/domain/location/location_failure.dart';

part 'trip_booking_state.freezed.dart';

@freezed
class TripBookingState with _$TripBookingState {
  factory TripBookingState({
    required IList<DriverEntity> nearbyDrivers,
    required d.Option<LocationAddress> originLocation,
    required d.Option<LocationAddress> definationLocation,
    required bool isLoading,
    required String? note,
    required d.Option<LocationFailure> failure,

    /// This use for navigate to my location in google map
    /// because google map controller cannot put inside state.
    /// And I want to move to my location from other widget which not contain
    /// google map controller. This will use listener to navigate
    required d.Option<Coordinate> myLocation,
  }) = _TripBookingState;

  factory TripBookingState.initial() => TripBookingState(
        originLocation: d.none(),
        definationLocation: d.none(),
        nearbyDrivers: <DriverEntity>[].lock,
        isLoading: false,
        note: '',
        failure: d.none(),
        myLocation: d.none(),
      );
}
