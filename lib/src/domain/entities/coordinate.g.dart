// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Coordinate _$$_CoordinateFromJson(Map<String, dynamic> json) =>
    _$_Coordinate(
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CoordinateToJson(_$_Coordinate instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
