import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/trip/trip_entity.dart';

part 'booking_state.freezed.dart';

@freezed
class BookingState with _$BookingState {
  const BookingState._();
  factory BookingState({
    required PassengerEntity passengerEntity,
    @Default(false) bool isLoading,
  }) = _BookingState;

  String get address => passengerEntity.startedPositionDetail.address;
}
