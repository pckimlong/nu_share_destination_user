// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverEntityDto _$$_DriverEntityDtoFromJson(Map<String, dynamic> json) =>
    _$_DriverEntityDto(
      fullname: json['fullname'] as String,
      available: json['available'] as bool,
      location:
          LocationDetail.fromJson(json['location'] as Map<String, dynamic>),
      vehicleType: $enumDecode(_$VehicleTypesEnumMap, json['vehicleType']),
      inProgressTrip: json['inProgressTrip'] as String?,
    );

Map<String, dynamic> _$$_DriverEntityDtoToJson(_$_DriverEntityDto instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'available': instance.available,
      'location': instance.location,
      'vehicleType': _$VehicleTypesEnumMap[instance.vehicleType],
      'inProgressTrip': instance.inProgressTrip,
    };

const _$VehicleTypesEnumMap = {
  VehicleTypes.ricksaw: 'ricksaw',
  VehicleTypes.tuktuk: 'tuktuk',
  VehicleTypes.car: 'car',
  VehicleTypes.suv: 'suv',
};
