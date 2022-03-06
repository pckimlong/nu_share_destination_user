import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'entities.dart';

part 'trip.freezed.dart';

@freezed
class Trip with _$Trip {
  const Trip._();

  factory Trip({
    required Option<String> id,

    /// This is important to determind the state of trip
    required TripStatus status,

    /// The first passenger who request this trip
    required Passenger passenger1,

    /// If passenger 1 allow share taxi, this trip will be visible to other
    /// so passenger2 can request to this trip too
    required Option<Passenger> passenger2,

    /// This will be none() when trip entity created
    /// And in picking state the driver will be some()
    /// This also use to update driver doc like there visible state when
    /// passenger1 allow share is toggle
    required Option<String> driverId,

    /// Started time since taxi riding to pick passenger (accepted state)
    /// This will be update to some() when taxi accepted and start picking up
    /// the passenger
    required Option<DateTime> startedTime,

    /// Ended time. Update when passenger1 and passenger2 status is both finished
    /// the trip
    required Option<DateTime> endedTime,
  }) = _Trip;

  /// This will be true if passenger1 allowshare
  bool get allowSharing => passenger1.allowToShare;

  /// Where the trip start from after pick a passenger
  LocationAddress get startedPositionDetail => passenger1.originLocation;

  /// For first request
  factory Trip.create(Passenger passenger) => Trip(
        id: none(),
        status: TripStatus.exploring(),
        passenger1: passenger,
        passenger2: none(),
        driverId: none(),
        startedTime: none(),
        endedTime: none(),
      );
}

@freezed
class TripStatus with _$TripStatus {
  /// When user exploring for taxi. this state when taxi can see user location and
  /// accepted
  factory TripStatus.exploring() = _Exploring;

  /// When somehow cancelled trip
  factory TripStatus.cancelled() = _Cancelled;

  /// When taxi accepted and ride to pick passenger
  factory TripStatus.picking() = _Picking;

  /// When trip is in progress
  factory TripStatus.inProgress() = _InProgress;

  /// When trip has been finished
  factory TripStatus.finished() = _Finished;

  //todo -- add expired when user wait for a long amount of time,
  // this show retry button
  // factory TripStatus.finished() = _Finished;
  factory TripStatus.fromString(String source) {
    switch (source) {
      case "exploring":
        return TripStatus.exploring();
      case "cancelled":
        return TripStatus.cancelled();
      case "picking":
        return TripStatus.picking();
      case "inProgress":
        return TripStatus.inProgress();
      case "finished":
        return TripStatus.finished();
    }

    throw Error();
  }
}

extension TripStatusX on TripStatus {
  String toValidString() {
    return when(
      exploring: () => "exploring",
      cancelled: () => "cancelled",
      picking: () => "picking",
      inProgress: () => "inProgress",
      finished: () => "finished",
    );
  }
}
