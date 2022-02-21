// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationAddressDto _$$_LocationAddressDtoFromJson(
        Map<String, dynamic> json) =>
    _$_LocationAddressDto(
      address: json['address'] as String,
      locationPoint: LocationAddressDto._geoPointFromJson(
          json['locationPoint'] as Map<String, dynamic>),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$_LocationAddressDtoToJson(
        _$_LocationAddressDto instance) =>
    <String, dynamic>{
      'address': instance.address,
      'locationPoint':
          LocationAddressDto._geoPointToJson(instance.locationPoint),
      'time': instance.time?.toIso8601String(),
    };
