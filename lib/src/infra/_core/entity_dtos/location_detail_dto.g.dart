// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationDetailDto _$$_LocationDetailDtoFromJson(Map<String, dynamic> json) =>
    _$_LocationDetailDto(
      locationPoint: LocationDetailDto._geoPointFromJson(
          json['locationPoint'] as Map<String, dynamic>),
      accuracy: (json['accuracy'] as num).toDouble(),
      altitude: (json['altitude'] as num).toDouble(),
      speed: (json['speed'] as num).toDouble(),
      speedAccuracy: (json['speedAccuracy'] as num).toDouble(),
      heading: (json['heading'] as num).toDouble(),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$_LocationDetailDtoToJson(
        _$_LocationDetailDto instance) =>
    <String, dynamic>{
      'locationPoint':
          LocationDetailDto._geoPointToJson(instance.locationPoint),
      'accuracy': instance.accuracy,
      'altitude': instance.altitude,
      'speed': instance.speed,
      'speedAccuracy': instance.speedAccuracy,
      'heading': instance.heading,
      'time': instance.time?.toIso8601String(),
    };
