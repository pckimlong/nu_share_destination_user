import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'entities.dart';

part 'passenger.freezed.dart';

@freezed
class Passenger with _$Passenger {
  factory Passenger({
    required User user,

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
  }) = _Passenger;
}
