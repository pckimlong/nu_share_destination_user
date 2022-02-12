import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/coordinate.dart';

part 'location_point.freezed.dart';
part 'location_point.g.dart';

@freezed
class LocationPoint with _$LocationPoint {
  const LocationPoint._();
  static const geoHashKey = "geoHash";
  static const coordinateKey = "coordinate";
  factory LocationPoint({
    required String geoHash,
    required Coordinate coordinate,
  }) = _LocationPoint;

  factory LocationPoint.fromJson(Map<String, dynamic> json) =>
      _$LocationPointFromJson(json);
}
