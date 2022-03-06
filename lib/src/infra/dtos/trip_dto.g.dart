// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripDto _$$_TripDtoFromJson(Map<String, dynamic> json) => _$_TripDto(
      status: TripDto._statusFromJson(json['status'] as String),
      passenger1: json['passenger1'],
      passenger2: json['passenger2'],
      driverId: json['driverId'] as String?,
      startedTime: json['startedTime'] == null
          ? null
          : DateTime.parse(json['startedTime'] as String),
      endedTime: json['endedTime'] == null
          ? null
          : DateTime.parse(json['endedTime'] as String),
    );

Map<String, dynamic> _$$_TripDtoToJson(_$_TripDto instance) =>
    <String, dynamic>{
      'status': TripDto._statusToJson(instance.status),
      'passenger1': instance.passenger1,
      'passenger2': instance.passenger2,
      'driverId': instance.driverId,
      'startedTime': instance.startedTime?.toIso8601String(),
      'endedTime': instance.endedTime?.toIso8601String(),
    };
