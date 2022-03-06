// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripDto _$$_TripDtoFromJson(Map<String, dynamic> json) => _$_TripDto(
      status: TripDto._statusFromJson(json['status'] as String),
      passenger1:
          PassengerDto.fromJson(json['passenger1'] as Map<String, dynamic>),
      passenger2: json['passenger2'] == null
          ? null
          : PassengerDto.fromJson(json['passenger2'] as Map<String, dynamic>),
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
      'passenger1': instance.passenger1.toJson(),
      'passenger2': instance.passenger2?.toJson(),
      'driverId': instance.driverId,
      'startedTime': instance.startedTime?.toIso8601String(),
      'endedTime': instance.endedTime?.toIso8601String(),
    };
