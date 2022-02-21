// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/location_point.dart';

part 'location_detail.freezed.dart';
// part 'location_detail.g.dart';

@freezed
class LocationDetail with _$LocationDetail {
  const LocationDetail._();
  factory LocationDetail({
    required LocationPoint locationPoint,
    required double accuracy,
    required double altitude,
    required double speed,
    required double speedAccuracy,
    required double heading,
    required DateTime? time,
  }) = _LocationDetail;
}
