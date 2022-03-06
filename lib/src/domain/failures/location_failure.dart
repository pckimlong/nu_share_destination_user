import 'package:freezed_annotation/freezed_annotation.dart';

part "location_failure.freezed.dart";

@freezed
class LocationFailure with _$LocationFailure {
  const factory LocationFailure.permissionDeny() = _PermissionDeny;
  const factory LocationFailure.packageError(String message) = _PackageError;
  const factory LocationFailure.requestDenied() = _RequestDenied;
}
