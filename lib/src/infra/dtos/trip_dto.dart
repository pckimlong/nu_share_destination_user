// ignore_for_file: invalid_annotation_target

import 'package:fpdart/fpdart.dart' as z;
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/domain.dart';
import 'dtos.dart';

part "trip_dto.freezed.dart";
part "trip_dto.g.dart";

@freezed
class TripDto with _$TripDto {
  static const driverIdKey = "driverId";
  static const endedTimeKey = "endedTime";
  static const idKey = "id";
  static const passenger1Key = "passenger1";
  static const passenger2Key = "passenger2";
  static const startedTimeKey = "startedTime";
  static const statusKey = "status";

  factory TripDto({
    @JsonKey(name: TripDto.idKey, ignore: true)
        String? id,
    @JsonKey(
      name: TripDto.statusKey,
      toJson: TripDto._statusToJson,
      fromJson: TripDto._statusFromJson,
    )
        required TripStatus status,
    @JsonKey(name: TripDto.passenger1Key)
        required PassengerDto passenger1,
    @JsonKey(name: TripDto.passenger2Key)
        required PassengerDto? passenger2,
    @JsonKey(name: TripDto.driverIdKey)
        required String? driverId,
    @JsonKey(name: TripDto.startedTimeKey)
        required DateTime? startedTime,
    @JsonKey(name: TripDto.endedTimeKey)
        required DateTime? endedTime,
  }) = _TripDto;

  const TripDto._();

  factory TripDto.fromDomain(Trip domain) {
    return TripDto(
      status: domain.status,
      passenger1: PassengerDto.fromDomain(domain.passenger1),
      passenger2: domain.passenger2.match(
        (a) => PassengerDto.fromDomain(a),
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

  factory TripDto.fromJson(Map<String, dynamic> json) =>
      _$TripDtoFromJson(json);

  static TripStatus _statusFromJson(String status) {
    return TripStatus.fromString(status);
  }

  static String _statusToJson(TripStatus status) {
    return status.toValidString();
  }
}

extension TripDtoX on TripDto {
  Trip toDomain() {
    return Trip(
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
