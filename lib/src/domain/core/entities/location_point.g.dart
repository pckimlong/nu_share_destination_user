// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationPoint _$$_LocationPointFromJson(Map<String, dynamic> json) =>
    _$_LocationPoint(
      geoHash: json['geoHash'] as String,
      coordinate:
          Coordinate.fromJson(json['coordinate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocationPointToJson(_$_LocationPoint instance) =>
    <String, dynamic>{
      'geoHash': instance.geoHash,
      'coordinate': instance.coordinate,
    };
