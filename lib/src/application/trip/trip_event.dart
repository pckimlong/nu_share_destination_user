import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/core/entities/coordinate.dart';
import '../../domain/trip/trip_entity.dart';

import '../../domain/trip/passenger_entity.dart';

part 'trip_event.freezed.dart';

@freezed
class TripEvent with _$TripEvent {
  /// Create trip request in database
  const factory TripEvent.bookTrip({
    required PassengerEntity passengerEntity,
  }) = _CreateRequest;

  /// Toggle trip model, to allow share or not
  const factory TripEvent.toggleShareMode() = _ToggleShareMode;

  const factory TripEvent.cancelTrip() = _CancelTrip;

  /// Change where taxi need to pickup. This will update the state as well
  const factory TripEvent.changeOriginPosition(Coordinate coordinate) =
      _ChangeOriginPosition;
}
