import 'package:freezed_annotation/freezed_annotation.dart';

import 'entities.dart';

part 'location_point.freezed.dart';

@freezed
class LocationPoint with _$LocationPoint {
  const LocationPoint._();
  factory LocationPoint({
    required String geoHash,
    required Coordinate coordinate,
  }) = _LocationPoint;
}
