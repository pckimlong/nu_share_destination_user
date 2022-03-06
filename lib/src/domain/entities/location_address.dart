// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'entities.dart';

part 'location_address.freezed.dart';

@freezed
class LocationAddress with _$LocationAddress {
  const LocationAddress._();

  factory LocationAddress({
    /// Name of place, like Phnom Penh...
    required String address,
    required LocationPoint locationPoint,
    required DateTime? time,
  }) = _LocationPointDetail;
}
