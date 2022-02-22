// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/location_address.dart';

import '../../../domain/core/entities/coordinate.dart';
import '../dto_extensions.dart';

part 'location_address_dto.freezed.dart';
part 'location_address_dto.g.dart';

@freezed
class LocationAddressDto with _$LocationAddressDto {
  LocationAddressDto._();
  static const addressKey = "address";
  static const locationPointKey = "locationPoint";
  static const timeKey = "time";

  factory LocationAddressDto({
    @JsonKey(name: LocationAddressDto.addressKey)
        required String address,
    @JsonKey(
      name: LocationAddressDto.locationPointKey,
      toJson: LocationAddressDto._geoPointToJson,
      fromJson: LocationAddressDto._geoPointFromJson,
    )
        required GeoFirePoint locationPoint,
    @JsonKey(name: LocationAddressDto.timeKey)
        required DateTime? time,
  }) = _LocationAddressDto;

  factory LocationAddressDto.fromJson(Map<String, dynamic> json) =>
      _$LocationAddressDtoFromJson(json);

  static Map<String, dynamic> _geoPointToJson(GeoFirePoint geoFirePoint) {
    return geoFirePoint.data;
  }

  static GeoFirePoint _geoPointFromJson(Map<String, dynamic> json) {
    return GeoFirePoint(
      json[Coordinate.latitudeKey],
      json[Coordinate.longitudeKey],
    );
  }

  factory LocationAddressDto.fromDomain(LocationAddress domain) {
    return LocationAddressDto(
      address: domain.address,
      locationPoint: domain.locationPoint.toGeoFirePoint(),
      time: domain.time,
    );
  }
}

extension LocationAddressDtoX on LocationAddressDto {
  LocationAddress toDomain() {
    return LocationAddress(
      address: address,
      locationPoint: locationPoint.toLocationPoint(),
      time: time,
    );
  }
}
