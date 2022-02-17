// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/location_point.dart';

part 'location_detail.freezed.dart';
part 'location_detail.g.dart';

@freezed
class LocationDetail with _$LocationDetail {
  static const locationPointKey = "locationPoint";
  static const accuracyKey = "accuracy";
  static const altitudeKey = "altitude";
  static const speedKey = "speed";
  static const speedAccuracyKey = "speedAccuracy";
  static const headingKey = "heading";
  static const timeKey = "time";

  const LocationDetail._();
  factory LocationDetail({
    /// Geolocation position contain coordinate, hash
    @JsonKey(name: LocationDetail.locationPointKey)
        required LocationPoint locationPoint,
    @JsonKey(name: LocationDetail.accuracyKey) required double accuracy,
    @JsonKey(name: LocationDetail.altitudeKey) required double altitude,
    @JsonKey(name: LocationDetail.speedKey) required double speed,
    @JsonKey(name: LocationDetail.speedAccuracyKey)
        required double speedAccuracy,
    @JsonKey(name: LocationDetail.headingKey) required double heading,
    @JsonKey(name: LocationDetail.timeKey) required DateTime? time,
  }) = _LocationDetail;

  factory LocationDetail.fromJson(Map<String, dynamic> json) =>
      _$LocationDetailFromJson(json);
}
