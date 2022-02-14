import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/_core/enums/vehicle_types.dart';
import 'package:nu_share_destination_user/src/domain/_core/errors.dart';
import 'package:nu_share_destination_user/src/domain/trip/trip_entity.dart';
import 'package:nu_share_destination_user/src/domain/user/user_entity.dart';

import '../../../domain/_core/entities/location_point_detail.dart';

part 'booking_state.freezed.dart';

@freezed
class BookingState with _$BookingState {
  const BookingState._();
  factory BookingState({
    required UserEntity user,
    required Option<String> note,
    required Option<VehicleTypes> vehicleTypes,
    @Default(false) bool allowShare,
    required Option<LocationPointDetail> startedPositionDetail,
    required Option<LocationPointDetail> expectedEndedPositionDetail,
    @Default(false) bool isLoading,
    required Option<String> errorMessage,
  }) = _BookingState;

  factory BookingState.initial(UserEntity userEntity) => BookingState(
        user: userEntity,
        note: none(),
        vehicleTypes: none(),
        startedPositionDetail: none(),
        expectedEndedPositionDetail: none(),
        errorMessage: none(),
      );

  bool get isValidForPassengerEntity =>
      vehicleTypes.isSome() &&
      startedPositionDetail.isSome() &&
      expectedEndedPositionDetail.isSome();

  PassengerEntity get passengerEntity => PassengerEntity(
        user: user,
        note: note.getOrElse(() => ''),
        allowToShare: allowShare,
        startedPositionDetail: startedPositionDetail.getOrElse(
            () => throw EmptyRequiredFieldError(startedPositionDetail)),
        expectedEndedPositionDetail: expectedEndedPositionDetail,
        actualEndedPositionDetail: none(),
      );
}
