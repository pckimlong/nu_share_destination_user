// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Passenger _$$_PassengerFromJson(Map<String, dynamic> json) => _$_Passenger(
      user: json['user'],
      note: json['note'] as String,
      allowToShare: json['allowToShare'] as bool,
      originLocation: json['originLocation'],
      destinationLocation: json['destinationLocation'],
      actualDestinationLocation: json['actualDestinationLocation'],
    );

Map<String, dynamic> _$$_PassengerToJson(_$_Passenger instance) =>
    <String, dynamic>{
      'user': instance.user,
      'note': instance.note,
      'allowToShare': instance.allowToShare,
      'originLocation': instance.originLocation,
      'destinationLocation': instance.destinationLocation,
      'actualDestinationLocation': instance.actualDestinationLocation,
    };
