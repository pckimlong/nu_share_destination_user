import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_detail.dart';
import 'package:nu_share_destination_user/src/domain/_core/enums/vehicle_types.dart';

part 'driver_entity.freezed.dart';

@freezed
class DriverEntity with _$DriverEntity {
  const DriverEntity._();
  factory DriverEntity({
    required String? id,
    required String fullname,

    /// Make driver visible to map or not. There are two way to toggle this:
    /// - one is when driver turn it off or on manualy
    /// - second is automatic turn off or on when driver is in the trip. this
    /// will update from passenger entity call
    /// When trip finished (if available) this will update to true automatically
    /// unless driver turn it of manualy
    required bool visible,

    /// This is the location of driver. To improve app performance and battery
    /// This only update when meet the condition, not update everytime
    /// My idea is to update it every defined meter and also when there are any
    /// passenger nearby. This can accomplish by having a method to watch for all
    /// nearby passenger request. If there is any nearby, do update the location.
    /// This will visible to those passenger
    required LocationDetail location,

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
  }) = _DriverEntity;

  /// If driver is in a shared trip or not
  ///
  /// This can check by looking at [inProgressTrip] field. if it is some() meaning
  /// that driver is in a trip, and also [visible] because in the trip when
  /// passenger1 toggle [allowToShare] field to true this will update [visible] to true
  /// too even when driver is in trip
  ///
  bool get inProgressOfSharedTrip => inProgressTrip.isSome() && visible == true;
}
