import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/entities/location_address.dart';
import '../user/user_entity.dart';

part 'passenger_entity.freezed.dart';

@freezed
class PassengerEntity with _$PassengerEntity {
  factory PassengerEntity({
    required UserEntity user,

    /// Note user create for driver in this trip
    required String note,

    /// Allow trip to share or not
    required bool allowToShare,

    /// The started point when taxi picked up
    required LocationAddress originLocation,

    /// Location where user want to go when booking
    ///todo: multiple location - will update in the next version
    required Option<LocationAddress> destinationLocation,

    /// if user stop the trip in the middle way without reach destination
    required Option<LocationAddress> actualDestinationLocation,
  }) = _PassengerEntity;
}
