// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Passenger _$$_PassengerFromJson(Map<String, dynamic> json) => _$_Passenger(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      note: json['note'] as String,
      allowToShare: json['allowToShare'] as bool,
      originLocation: LocationAddressDto.fromJson(
          json['originLocation'] as Map<String, dynamic>),
      destinationLocation: json['destinationLocation'] == null
          ? null
          : LocationAddressDto.fromJson(
              json['destinationLocation'] as Map<String, dynamic>),
      actualDestinationLocation: json['actualDestinationLocation'] == null
          ? null
          : LocationAddressDto.fromJson(
              json['actualDestinationLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PassengerToJson(_$_Passenger instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'note': instance.note,
      'allowToShare': instance.allowToShare,
      'originLocation': instance.originLocation.toJson(),
      'destinationLocation': instance.destinationLocation?.toJson(),
      'actualDestinationLocation': instance.actualDestinationLocation?.toJson(),
    };
