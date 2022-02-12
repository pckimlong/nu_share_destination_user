// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinate.freezed.dart';
part 'coordinate.g.dart';

@freezed
class Coordinate with _$Coordinate {
  static const latitudeKey = "latitude";
  static const longitudeKey = "longitude";

  factory Coordinate(
    @JsonKey(name: Coordinate.latitudeKey) double latitude,
    @JsonKey(name: Coordinate.longitudeKey) double longitude,
  ) = _Coordinate;

  const Coordinate._();

  factory Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);
}
