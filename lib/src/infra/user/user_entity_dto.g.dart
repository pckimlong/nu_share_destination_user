// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntityDto _$$_UserEntityDtoFromJson(Map<String, dynamic> json) =>
    _$_UserEntityDto(
      fullname: json['fullname'] as String? ?? '',
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$_UserEntityDtoToJson(_$_UserEntityDto instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'email': instance.email,
      'phone': instance.phone,
      'photoUrl': instance.photoUrl,
    };
