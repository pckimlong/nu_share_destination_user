import 'package:freezed_annotation/freezed_annotation.dart';

part "driver_failure.freezed.dart";

@freezed
class DriverFailure with _$DriverFailure {
  factory DriverFailure.serverError(String? mgs) = _ServerError;
  const factory DriverFailure.driverNotExisted() = DriverNotExisted;

  /// When driver want to perform some actions which are not allow to do
  ///  when driver is in a trip state,
  /// Example: turn available to false when inProgress is not null yet
  factory DriverFailure.bannedActionWhileInProgress(String tripId) =
      _BannedActionWhileInProgress;
  factory DriverFailure.notExisted() = _NotExisted;
}
