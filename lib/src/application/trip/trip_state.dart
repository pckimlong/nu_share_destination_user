import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/core/entities/location_detail.dart';
import '../../domain/core/errors.dart';
import '../../domain/driver/driver_entity.dart';
import '../../domain/trip/trip_entity.dart';

import '../../domain/trip/passenger_entity.dart';

part 'trip_state.freezed.dart';

@freezed
class TripState with _$TripState {
  const TripState._();
  factory TripState({
    required TripEntity tripEntity,

    /// Get driver id from trip Entity and subscribe to driver stream
    required Option<DriverEntity> driver,

    /// Your uid, authenticated
    required String yourId,
  }) = _TripState;

  /// Passenger can toggle share button only if he is passenger1
  /// Passenger1 : initial owner who create this request
  bool get enableAllowShareButton => passenger1.user.id == yourId;

  /// Location detail contain speed, heading... This will get from driver entity
  /// stream which currenly listening

  Option<LocationDetail> get location => driver.match(
        (t) =>
            some(t.location.getOrElse(() => throw EmptyRequiredFieldError())),
        () => none(),
      );

  PassengerEntity get passenger1 => tripEntity.passenger1;

  Option<PassengerEntity> get passenger2 => tripEntity.passenger2;

  TripStatus get tripStatus => tripEntity.status;

  Option<String> get driverId => tripEntity.driverId;

  bool get allowShare => tripEntity.allowSharing;
}
