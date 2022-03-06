// ignore_for_file: invalid_annotation_target

import 'package:fpdart/fpdart.dart' as z;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/trip/trip_entity.dart';
import 'package:nu_share_destination_user/src/infra/dtos/location_address_dto.dart';
import 'package:nu_share_destination_user/src/infra/dtos/location_detail_dto.dart';
import 'package:nu_share_destination_user/src2/infra/dtos/user_entity_dto.dart';

import '../../../src/domain/core/entities/location_address.dart';
import '../../../src/domain/trip/passenger_entity.dart';

part '../../../src/infra/trip/trip_entity_dto.freezed.dart';
part '../../../src/infra/trip/trip_entity_dto.g.dart';

@freezed
class TripEntityDto with _$TripEntityDto {
  static const driverIdKey = "driverId";
  static const endedTimeKey = "endedTime";
  static const idKey = "id";
  static const passenger1Key = "passenger1";
  static const passenger2Key = "passenger2";
  static const startedTimeKey = "startedTime";
  static const statusKey = "status";

  factory TripEntityDto({
    @JsonKey(name: TripEntityDto.idKey, ignore: true)
        String? id,
    @JsonKey(
      name: TripEntityDto.statusKey,
      toJson: TripEntityDto._statusToJson,
      fromJson: TripEntityDto._statusFromJson,
    )
        required TripStatus status,
    @JsonKey(name: TripEntityDto.passenger1Key)
        required PassengerEntityDto passenger1,
    @JsonKey(name: TripEntityDto.passenger2Key)
        required PassengerEntityDto? passenger2,
    @JsonKey(name: TripEntityDto.driverIdKey)
        required String? driverId,
    @JsonKey(name: TripEntityDto.startedTimeKey)
        required DateTime? startedTime,
    @JsonKey(name: TripEntityDto.endedTimeKey)
        required DateTime? endedTime,
  }) = _TripEntityDto;

  const TripEntityDto._();

  factory TripEntityDto.fromDomain(TripEntity domain) {
    return TripEntityDto(
      status: domain.status,
      passenger1: PassengerEntityDto.fromDomain(domain.passenger1),
      passenger2: domain.passenger2.match(
        (a) => PassengerEntityDto.fromDomain(a),
        () => null,
      ),
      driverId: domain.driverId.match(
        z.id,
        () => null,
      ),
      startedTime: domain.startedTime.match(
        z.id,
        () => null,
      ),
      endedTime: domain.endedTime.match(
        z.id,
        () => null,
      ),
    );
  }

  factory TripEntityDto.fromJson(Map<String, dynamic> json) =>
      _$TripEntityDtoFromJson(json);

  static TripStatus _statusFromJson(String status) {
    return TripStatus.fromString(status);
  }

  static String _statusToJson(TripStatus status) {
    return status.toValidString();
  }
}

extension TripEntityDtoX on TripEntityDto {
  TripEntity toDomain() {
    return TripEntity(
      id: id == null ? z.none() : z.some(id!),
      status: status,
      passenger1: passenger1.toDomain(),
      passenger2:
          passenger2 == null ? z.none() : z.some(passenger2!.toDomain()),
      driverId: driverId == null ? z.none() : z.some(driverId!),
      startedTime: startedTime == null ? z.none() : z.some(startedTime!),
      endedTime: endedTime == null ? z.none() : z.some(endedTime!),
    );
  }
}

@freezed
class PassengerEntityDto with _$PassengerEntityDto {
  static const actualDestinationLocationKey = "actualDestinationLocation";
  static const allowShareKey = "allowToShare";
  static const destinationLocationKey = "destinationLocation";
  static const noteKey = "note";
  static const originLocationKey = "originLocation";
  static const userKey = "user";

  factory PassengerEntityDto({
    required UserEntityDto user,
    required String note,
    required bool allowToShare,
    required LocationAddressDto originLocation,
    required LocationAddressDto? destinationLocation,
    required LocationAddressDto? actualDestinationLocation,
  }) = _PassengerEntity;

  const PassengerEntityDto._();

  factory PassengerEntityDto.fromDomain(PassengerEntity domain) {
    return PassengerEntityDto(
      user: UserEntityDto.fromDomain(domain.user),
      note: domain.note,
      allowToShare: domain.allowToShare,
      originLocation: LocationAddressDto.fromDomain(domain.originLocation),
      destinationLocation: domain.destinationLocation.match(
        (address) => LocationAddressDto.fromDomain(address),
        () => null,
      ),
      actualDestinationLocation: domain.destinationLocation.match(
        (address) => LocationAddressDto.fromDomain(address),
        () => null,
      ),
    );
  }

  factory PassengerEntityDto.fromJson(Map<String, dynamic> json) =>
      _$PassengerEntityDtoFromJson(json);
}

extension PassengerEntityDtoX on PassengerEntityDto {
  PassengerEntity toDomain() {
    return PassengerEntity(
      user: user.toDomain(),
      note: note,
      allowToShare: allowToShare,
      originLocation: originLocation.toDomain(),
      destinationLocation: destinationLocation == null
          ? z.none()
          : z.some(destinationLocation!.toDomain()),
      actualDestinationLocation: actualDestinationLocation == null
          ? z.none()
          : z.some(actualDestinationLocation!.toDomain()),
    );
  }
}
