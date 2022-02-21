// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinate.freezed.dart';

@freezed
class Coordinate with _$Coordinate {
  static const latitudeKey = "latitude";
  static const longitudeKey = "longitude";

  const factory Coordinate(
    double latitude,
    double longitude,
  ) = _Coordinate;

  const Coordinate._();
}
