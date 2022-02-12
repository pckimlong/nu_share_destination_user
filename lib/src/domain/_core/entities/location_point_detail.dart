// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_point.dart';

part 'location_point_detail.freezed.dart';
part 'location_point_detail.g.dart';

@freezed
class LocationPointDetail with _$LocationPointDetail {
  const LocationPointDetail._();

  static const addressKey = "address";
  static const locationPointKey = "locationPoint";
  static const timeKey = "time";

  factory LocationPointDetail({
    /// Name of place, like Phnom Penh...
    @JsonKey(name: LocationPointDetail.addressKey) required String address,
    @JsonKey(name: LocationPointDetail.locationPointKey)
        required LocationPoint locationPoint,

    /// Time at this location
    @JsonKey(name: LocationPointDetail.timeKey) required DateTime? time,
  }) = _LocationPointDetail;

  factory LocationPointDetail.fromJson(Map<String, dynamic> json) =>
      _$LocationPointDetailFromJson(json);
}
