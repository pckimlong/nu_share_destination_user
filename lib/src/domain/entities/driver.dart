import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'entities.dart';

part 'driver.freezed.dart';

@freezed
class Driver with _$Driver {
  const Driver._();
  factory Driver({
    required String? id,
    required String fullname,

    /// Make driver visible to map or not. There are two way to toggle this:
    /// - one is when driver turn it off or on manualy
    /// - second is automatic turn off or on when driver is in the trip. this
    /// will update from passenger entity call
    /// When trip finished (if available) this will update to true automatically
    /// unless driver turn it of manualy
    required bool available,

    /// This is the location of driver. To improve app performance and battery
    /// This only update when meet the condition, not update everytime
    /// My idea is to update it every defined meter and also when driver available
    /// is set to true. Note that: when in a trip, instead of using firestore
    /// I gonna use firebase realtime database instead. beacause it is cheap
    /// and not count bill on read/write like firestore. this mean that when
    /// driver [available] is false and [inProgressTrip] is true, update user
    /// location in real-time to database
    required Option<LocationDetail> location,

    /// Vihicle type of taxi.
    ///
    /// This will be use to query in database. Allow user to find correct vehicle
    /// type they want, also help to find trip request which need this type of
    /// vehicle
    required VehicleTypes vehicleType,

    /// This return some() when driver is attach to a trip, mean he is accepted
    /// a trip from user request. When trip ended this will update to none();
    /// This will be use to fetch the trip request entity to show on screen
    required Option<String> inProgressTrip,
  }) = _Driver;

  /// If driver is in a shared trip or not
  ///
  /// This can check by looking at [inProgressTrip] field. if it is some() meaning
  /// that driver is in a trip, and also [visible] because in the trip when
  /// passenger1 toggle [allowToShare] field to true this will update [visible] to true
  /// too even when driver is in trip
  ///
  bool get inProgressOfSharedTrip =>
      inProgressTrip.isSome() && available == true;

  /// Can update real time location of driver to real time database
  bool get updateRealTimeLocation => inProgressTrip.isSome();

  /// this is not alway realtime
  bool get updateDriverLocation =>
      inProgressOfSharedTrip || (inProgressTrip.isNone() && available == true);
}

enum VehicleTypes { ricksaw, tuktuk, car, suv }
