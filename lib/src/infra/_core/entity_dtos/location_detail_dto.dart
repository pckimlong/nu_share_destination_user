// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/location_detail.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/location_point.dart';
import 'package:nu_share_destination_user/src/infra/_core/dto_extensions.dart';

part 'location_detail_dto.freezed.dart';
part 'location_detail_dto.g.dart';

@freezed
class LocationDetailDto with _$LocationDetailDto {
  static const locationPointKey = "locationPoint";
  static const accuracyKey = "accuracy";
  static const altitudeKey = "altitude";
  static const speedKey = "speed";
  static const speedAccuracyKey = "speedAccuracy";
  static const headingKey = "heading";
  static const timeKey = "time";

  const LocationDetailDto._();

  factory LocationDetailDto({
    /// Geolocation position contain coordinate, hash
    @JsonKey(
      name: LocationDetailDto.locationPointKey,
      toJson: LocationDetailDto._geoPointToJson,
      fromJson: LocationDetailDto._geoPointFromJson,
    )
        required LocationPoint locationPoint,
    @JsonKey(name: LocationDetailDto.accuracyKey)
        required double accuracy,
    @JsonKey(name: LocationDetailDto.altitudeKey)
        required double altitude,
    @JsonKey(name: LocationDetailDto.speedKey)
        required double speed,
    @JsonKey(name: LocationDetailDto.speedAccuracyKey)
        required double speedAccuracy,
    @JsonKey(name: LocationDetailDto.headingKey)
        required double heading,
    @JsonKey(name: LocationDetailDto.timeKey)
        required DateTime? time,
  }) = _LocationDetailDto;

  factory LocationDetailDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDetailDtoFromJson(json);

  static Map<String, dynamic> _geoPointToJson(LocationPoint locationPoint) {
    final geoF = locationPoint.toGeoFirePoint();
    return geoF.data;
  }

  static LocationPoint _geoPointFromJson(Map<String, dynamic> json) {
    final geoPoint = json['geopoint'] as GeoPoint;
    return LocationPoint(
      geoHash: json['geohash'],
      coordinate: geoPoint.toCoordinate(),
    );
  }

  factory LocationDetailDto.fromDomain(LocationDetail domain) {
    return LocationDetailDto(
      locationPoint: domain.locationPoint,
      accuracy: domain.accuracy,
      altitude: domain.altitude,
      speed: domain.speed,
      speedAccuracy: domain.speedAccuracy,
      heading: domain.heading,
      time: domain.time,
    );
  }
}

extension LocationDetailDtoX on LocationDetailDto {
  LocationDetail toDomain() {
    return LocationDetail(
      locationPoint: locationPoint,
      accuracy: accuracy,
      altitude: altitude,
      speed: speed,
      speedAccuracy: speedAccuracy,
      heading: heading,
      time: time,
    );
  }

  /// Return valid json
  // Map<String, dynamic> toValidJson(){}
}
