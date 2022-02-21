import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/core/entities/coordinate.dart';

part 'trip_booking_event.freezed.dart';

@freezed
class TripBookingEvent with _$TripBookingEvent {
  const factory TripBookingEvent.moveToMyLocation() = _MoveToMyLocation;
  const factory TripBookingEvent.changeOriginLocation(Coordinate coor) =
      _ChangeOriginLocation;
  const factory TripBookingEvent.changeDestinationLocation(Coordinate coor) =
      _ChangeDestinationLocation;
}
