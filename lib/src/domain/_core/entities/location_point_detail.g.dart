// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_point_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationPointDetail _$$_LocationPointDetailFromJson(
        Map<String, dynamic> json) =>
    _$_LocationPointDetail(
      address: json['address'] as String,
      locationPoint:
          LocationPoint.fromJson(json['locationPoint'] as Map<String, dynamic>),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$_LocationPointDetailToJson(
        _$_LocationPointDetail instance) =>
    <String, dynamic>{
      'address': instance.address,
      'locationPoint': instance.locationPoint,
      'time': instance.time?.toIso8601String(),
    };
