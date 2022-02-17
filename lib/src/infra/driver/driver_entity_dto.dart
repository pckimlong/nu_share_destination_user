// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/core/entities/location_detail.dart';
import 'package:nu_share_destination_user/src/domain/driver/vehicle_types.dart';
import 'package:nu_share_destination_user/src/domain/driver/driver_entity.dart';

part 'driver_entity_dto.freezed.dart';
part 'driver_entity_dto.g.dart';

@freezed
abstract class DriverEntityDto with _$DriverEntityDto {
  static const availableKey = "available";
  static const fullnameKey = "fullname";

  /// Place where geo fire point store
  static const String geoFirePointKey =
      DriverEntityDto.locationKey + "." + LocationDetail.locationPointKey;

  static const idKey = "id";
  static const inProgressTripKey = "inProgressTrip";
  static const locationKey = "location";
  static const vehicleTypeKey = "vehicleType";

  factory DriverEntityDto({
    @JsonKey(name: DriverEntityDto.idKey, ignore: true) String? id,
    @JsonKey(name: DriverEntityDto.fullnameKey) required String fullname,
    @JsonKey(name: DriverEntityDto.availableKey) required bool available,
    @JsonKey(name: DriverEntityDto.locationKey)
        required LocationDetail location,
    @JsonKey(name: DriverEntityDto.vehicleTypeKey)
        required VehicleTypes vehicleType,
    @JsonKey(name: DriverEntityDto.inProgressTripKey)
        required String? inProgressTrip,
  }) = _DriverEntityDto;

  const DriverEntityDto._();

  factory DriverEntityDto.fromDomain(DriverEntity domain) {
    return DriverEntityDto(
      id: domain.id,
      fullname: domain.fullname,
      available: domain.available,
      location: domain.location,
      vehicleType: domain.vehicleType,
      inProgressTrip: domain.inProgressTrip.fold(() => null, id),
    );
  }

  factory DriverEntityDto.fromJson(Map<String, dynamic> json) =>
      _$DriverEntityDtoFromJson(json);
}
