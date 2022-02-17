// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/location_point.dart';

part 'location_point_detail.freezed.dart';
part 'location_point_detail.g.dart';

@freezed
class LocationAddress with _$LocationAddress {
  const LocationAddress._();

  static const addressKey = "address";
  static const locationPointKey = "locationPoint";
  static const timeKey = "time";

  factory LocationAddress({
    /// Name of place, like Phnom Penh...
    @JsonKey(name: LocationAddress.addressKey) required String address,
    @JsonKey(name: LocationAddress.locationPointKey)
        required LocationPoint locationPoint,

    /// Time at this location
    @JsonKey(name: LocationAddress.timeKey) required DateTime? time,
  }) = _LocationPointDetail;

  factory LocationAddress.fromJson(Map<String, dynamic> json) =>
      _$LocationAddressFromJson(json);
}
