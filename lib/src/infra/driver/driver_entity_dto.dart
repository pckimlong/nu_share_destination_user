// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart' as dz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/driver/driver_entity.dart';
import 'package:nu_share_destination_user/src/domain/driver/vehicle_types.dart';
import 'package:nu_share_destination_user/src/infra/core/entity_dtos/location_detail_dto.dart';

import '../core/firebase/firebase_extensions.dart';

part 'driver_entity_dto.freezed.dart';
part 'driver_entity_dto.g.dart';

@freezed
abstract class DriverEntityDto with _$DriverEntityDto {
  static const availableKey = "available";
  static const fullnameKey = "fullname";

  /// Place where geo fire point store
  static const String geoFirePointKey =
      DriverEntityDto.locationKey + "." + LocationDetailDto.locationPointKey;

  static const idKey = "id";
  static const inProgressTripKey = "inProgressTrip";
  static const locationKey = "location";
  static const vehicleTypeKey = "vehicleType";

  factory DriverEntityDto({
    @JsonKey(name: DriverEntityDto.idKey, ignore: true) String? id,
    @JsonKey(name: DriverEntityDto.fullnameKey) required String fullname,
    @JsonKey(name: DriverEntityDto.availableKey) required bool available,
    @JsonKey(name: DriverEntityDto.locationKey)
        required LocationDetailDto? location,
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
      location: domain.location.match(
        (domain) => LocationDetailDto.fromDomain(domain),
        () => null,
      ),
      vehicleType: domain.vehicleType,
      inProgressTrip: domain.inProgressTrip.match(
        dz.id,
        () => null,
      ),
    );
  }

  factory DriverEntityDto.fromJson(Map<String, dynamic> json) =>
      _$DriverEntityDtoFromJson(json);

  factory DriverEntityDto.fromDocument(DocumentSnapshot doc) =>
      _$DriverEntityDtoFromJson(doc.toMap()).copyWith(id: doc.id);
}

extension DriverEntityDtoX on DriverEntityDto {
  DriverEntity toDomain() {
    return DriverEntity(
      id: id,
      fullname: fullname,
      available: available,
      location: location == null ? dz.none() : dz.some(location!.toDomain()),
      vehicleType: vehicleType,
      inProgressTrip:
          inProgressTrip == null ? dz.none() : dz.some(inProgressTrip!),
    );
  }
}
