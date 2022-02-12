import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_detail.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_point_detail.dart';
import 'package:nu_share_destination_user/src/domain/user/user_entity.dart';

import '../driver/driver_entity.dart';

part 'trip_entity.freezed.dart';

@freezed
class TripEntity with _$TripEntity {
  const TripEntity._();

  factory TripEntity({
    required Option<String> id,

    /// This is important to determind the state of trip
    required TripStatus status,

    /// The first passenger who request this trip
    required PassengerEntity passenger1,

    /// If passenger 1 allow share taxi, this trip will be visible to other
    /// so passenger2 can request to this trip too
    required Option<PassengerEntity> passenger2,

    /// This will be none() when trip entity created
    /// And in picking state the driver will be some
    required Option<DriverEntity> driver,

    /// Started time since taxi riding to pick passenger
    /// This will be update to some() when taxi accepted and start picking up
    /// the passenger
    required Option<DateTime> startedTime,

    /// Ended time. Update when passenger1 and passenger2 status is both finished
    /// the trip
    required Option<DateTime> endedTime,
  }) = _TripEntity;

  /// Return location to show on map, also spead, heading...
  Option<LocationDetail> get location {
    return driver.fold(
      () => none(),
      (a) => some(a.location),
    );
  }

  bool get allowSharing => passenger1.allowToShare;

  /// Where the trip start from after pick a passenger
  LocationPointDetail get startedPositionDetail =>
      passenger1.startedPositionDetail;

  /// For first request
  factory TripEntity.create(PassengerEntity passenger) => TripEntity(
        id: none(),
        status: TripStatus.booking(),
        passenger1: passenger,
        passenger2: none(),
        driver: none(),
        startedTime: none(),
        endedTime: none(),
      );
}

@freezed
class PassengerEntity with _$PassengerEntity {
  factory PassengerEntity({
    required UserEntity user,

    /// Note user create for driver in this trip
    required String note,

    /// Allow trip to share or not
    required bool allowToShare,

    /// The started point when taxi picked up
    required LocationPointDetail startedPositionDetail,

    /// Location where user want to go when booking
    required LocationPointDetail expectedEndedPositionDetail,

    /// if user stop the trip in the middle way without reach destination
    required Option<LocationPointDetail> actualEndedPositionDetail,
  }) = _PassengerEntity;
}

@freezed
class TripStatus with _$TripStatus {
  factory TripStatus(String value) = _TripStatus;

  /// When user booking for taxi
  factory TripStatus.booking() => TripStatus('Booking');

  /// When somehow cancelled trip
  factory TripStatus.cancelled() => TripStatus('Cancelled');

  /// When taxi accepted and ride to pick passenger
  factory TripStatus.picking() => TripStatus('Picking');

  /// When trip is in progress
  factory TripStatus.inProgress() => TripStatus('In-Progress');

  /// When trip has been finished
  factory TripStatus.finished() => TripStatus('Finished');
}
