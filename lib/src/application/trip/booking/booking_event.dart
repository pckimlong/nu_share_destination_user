import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/coordinate.dart';

part 'booking_event.freezed.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.changeOriginPosition(Coordinate coordinate) =
      _ChangeOriginPosition;
}
