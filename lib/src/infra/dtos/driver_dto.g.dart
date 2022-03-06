// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverDto _$$_DriverDtoFromJson(Map<String, dynamic> json) => _$_DriverDto(
      fullname: json['fullname'] as String,
      available: json['available'] as bool,
      location: json['location'] == null
          ? null
          : LocationDetailDto.fromJson(
              json['location'] as Map<String, dynamic>),
      vehicleType: $enumDecode(_$VehicleTypesEnumMap, json['vehicleType']),
      inProgressTrip: json['inProgressTrip'] as String?,
    );

Map<String, dynamic> _$$_DriverDtoToJson(_$_DriverDto instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'available': instance.available,
      'location': instance.location?.toJson(),
      'vehicleType': _$VehicleTypesEnumMap[instance.vehicleType],
      'inProgressTrip': instance.inProgressTrip,
    };

const _$VehicleTypesEnumMap = {
  VehicleTypes.ricksaw: 'ricksaw',
  VehicleTypes.tuktuk: 'tuktuk',
  VehicleTypes.car: 'car',
  VehicleTypes.suv: 'suv',
};
