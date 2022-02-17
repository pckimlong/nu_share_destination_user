// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/location_point.dart';

part 'coordinate.freezed.dart';
part 'coordinate.g.dart';

@freezed
class Coordinate with _$Coordinate {
  static const latitudeKey = "latitude";
  static const longitudeKey = "longitude";

  const factory Coordinate(
    @JsonKey(name: Coordinate.latitudeKey) double latitude,
    @JsonKey(name: Coordinate.longitudeKey) double longitude,
  ) = _Coordinate;

  const Coordinate._();

  factory Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);
}
