// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripEntityDto _$$_TripEntityDtoFromJson(Map<String, dynamic> json) =>
    _$_TripEntityDto(
      status: TripEntityDto._statusFromJson(json['status'] as String),
      passenger1: PassengerEntityDto.fromJson(
          json['passenger1'] as Map<String, dynamic>),
      passenger2: json['passenger2'] == null
          ? null
          : PassengerEntityDto.fromJson(
              json['passenger2'] as Map<String, dynamic>),
      driverId: json['driverId'] as String?,
      startedTime: json['startedTime'] == null
          ? null
          : DateTime.parse(json['startedTime'] as String),
      endedTime: json['endedTime'] == null
          ? null
          : DateTime.parse(json['endedTime'] as String),
    );

Map<String, dynamic> _$$_TripEntityDtoToJson(_$_TripEntityDto instance) =>
    <String, dynamic>{
      'status': TripEntityDto._statusToJson(instance.status),
      'passenger1': instance.passenger1.toJson(),
      'passenger2': instance.passenger2?.toJson(),
      'driverId': instance.driverId,
      'startedTime': instance.startedTime?.toIso8601String(),
      'endedTime': instance.endedTime?.toIso8601String(),
    };

_$_PassengerEntity _$$_PassengerEntityFromJson(Map<String, dynamic> json) =>
    _$_PassengerEntity(
      user: UserEntityDto.fromJson(json['user'] as Map<String, dynamic>),
      note: json['note'] as String,
      allowToShare: json['allowToShare'] as bool,
      originLocation: LocationAddressDto.fromJson(
          json['originLocation'] as Map<String, dynamic>),
      destinationLocation: json['destinationLocation'] == null
          ? null
          : LocationAddressDto.fromJson(
              json['destinationLocation'] as Map<String, dynamic>),
      actualDestinationLocation: json['actualDestinationLocation'] == null
          ? null
          : LocationAddressDto.fromJson(
              json['actualDestinationLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PassengerEntityToJson(_$_PassengerEntity instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'note': instance.note,
      'allowToShare': instance.allowToShare,
      'originLocation': instance.originLocation.toJson(),
      'destinationLocation': instance.destinationLocation?.toJson(),
      'actualDestinationLocation': instance.actualDestinationLocation?.toJson(),
    };
