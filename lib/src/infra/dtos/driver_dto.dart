// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart' as dz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/infra/dtos/location_detail_dto.dart';

import '../datasource/firebase_extensions.dart';
import '../../domain/domain.dart';

part "driver_dto.freezed.dart";
part "driver_dto.g.dart";

@freezed
abstract class DriverDto with _$DriverDto {
  static const availableKey = "available";
  static const fullnameKey = "fullname";

  /// Place where geo fire point store
  static const String geoFirePointKey =
      DriverDto.locationKey + "." + LocationDetailDto.locationPointKey;

  static const idKey = "id";
  static const inProgressTripKey = "inProgressTrip";
  static const locationKey = "location";
  static const vehicleTypeKey = "vehicleType";

  factory DriverDto({
    @JsonKey(name: DriverDto.idKey, ignore: true) String? id,
    @JsonKey(name: DriverDto.fullnameKey) required String fullname,
    @JsonKey(name: DriverDto.availableKey) required bool available,
    @JsonKey(name: DriverDto.locationKey) required LocationDetailDto? location,
    @JsonKey(name: DriverDto.vehicleTypeKey) required VehicleTypes vehicleType,
    @JsonKey(name: DriverDto.inProgressTripKey) required String? inProgressTrip,
  }) = _DriverDto;

  const DriverDto._();

  factory DriverDto.fromDocument(DocumentSnapshot doc) =>
      _$DriverDtoFromJson(doc.toMap()).copyWith(id: doc.id);

  factory DriverDto.fromDomain(Driver domain) {
    return DriverDto(
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

  factory DriverDto.fromJson(Map<String, dynamic> json) =>
      _$DriverDtoFromJson(json);
}

extension DriverDtoX on DriverDto {
  Driver toDomain() {
    return Driver(
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
