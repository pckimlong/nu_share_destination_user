import 'package:freezed_annotation/freezed_annotation.dart';

part "trip_failure.freezed.dart";

@freezed
class TripFailure with _$TripFailure {
  /// When try to archor to trip which already attach with other driver
  factory TripFailure.tripRequestUnavailable() = _TripRequestUnavailable;
  factory TripFailure.serverError([String? mgs]) = _ServerError;
  factory TripFailure.notExisted() = _NotExisted;
}
