// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationDetail _$$_LocationDetailFromJson(Map<String, dynamic> json) =>
    _$_LocationDetail(
      locationPoint:
          LocationPoint.fromJson(json['locationPoint'] as Map<String, dynamic>),
      accuracy: (json['accuracy'] as num).toDouble(),
      altitude: (json['altitude'] as num).toDouble(),
      speed: (json['speed'] as num).toDouble(),
      speedAccuracy: (json['speedAccuracy'] as num).toDouble(),
      heading: (json['heading'] as num).toDouble(),
    );

Map<String, dynamic> _$$_LocationDetailToJson(_$_LocationDetail instance) =>
    <String, dynamic>{
      'locationPoint': instance.locationPoint,
      'accuracy': instance.accuracy,
      'altitude': instance.altitude,
      'speed': instance.speed,
      'speedAccuracy': instance.speedAccuracy,
      'heading': instance.heading,
    };
