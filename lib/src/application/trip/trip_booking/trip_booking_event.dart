import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/coordinate.dart';

part 'trip_booking_event.freezed.dart';

@freezed
class TripBookingEvent with _$TripBookingEvent {
  const factory TripBookingEvent.moveToMyLocation() = _MoveToMyLocation;
  const factory TripBookingEvent.changeOriginLocation(Coordinate coor) =
      _ChangeOriginLocation;
  const factory TripBookingEvent.changeDestinationLocation(Coordinate coor) =
      _ChangeDestinationLocation;
}
