import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/coordinate.dart';

part 'location_point.freezed.dart';
part 'location_point.g.dart';

@freezed
class LocationPoint with _$LocationPoint {
  const LocationPoint._();
  static const geoHashKey = "geohash";
  static const coordinateKey = "geopoint";
  factory LocationPoint({
    required String geoHash,
    required Coordinate coordinate,
  }) = _LocationPoint;

  factory LocationPoint.fromJson(Map<String, dynamic> json) =>
      _$LocationPointFromJson(json);
}
