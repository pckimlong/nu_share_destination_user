import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/trip/trip_entity.dart';

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
