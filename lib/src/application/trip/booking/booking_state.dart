import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/driver/vehicle_types.dart';
import 'package:nu_share_destination_user/src/domain/core/errors.dart';
import 'package:nu_share_destination_user/src/domain/trip/trip_entity.dart';
import 'package:nu_share_destination_user/src/domain/user/user_entity.dart';

import '../../../domain/core/entities/location_address.dart';
import '../../../domain/trip/passenger_entity.dart';

part 'booking_state.freezed.dart';

@freezed
class BookingState with _$BookingState {
  const BookingState._();
  factory BookingState({
    required UserEntity user,
    required Option<String> note,
    required Option<VehicleTypes> vehicleTypes,
    @Default(false) bool allowShare,
    required Option<LocationAddress> originLocation,
    required Option<LocationAddress> desitionationLocation,
    @Default(false) bool isLoading,
    required Option<String> errorMessage,
  }) = _BookingState;

  factory BookingState.initial(UserEntity userEntity) => BookingState(
        user: userEntity,
        note: none(),
        vehicleTypes: none(),
        originLocation: none(),
        desitionationLocation: none(),
        errorMessage: none(),
      );

  bool get isValidForPassengerEntity =>
      vehicleTypes.isSome() &&
      originLocation.isSome() &&
      desitionationLocation.isSome();

  PassengerEntity get passengerEntity => PassengerEntity(
        user: user,
        note: note.getOrElse(() => ''),
        allowToShare: allowShare,
        originLocation: originLocation
            .getOrElse(() => throw EmptyRequiredFieldError(originLocation)),
        destinationLocation: desitionationLocation,
        actualDestinationLocation: none(),
      );
}
