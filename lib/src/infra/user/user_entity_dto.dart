// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/_core/value_object.dart';
import '../../domain/user/user_entity.dart';
import '../../domain/user/value_objects.dart';

part 'user_entity_dto.freezed.dart';
part 'user_entity_dto.g.dart';

@freezed
class UserEntityDto with _$UserEntityDto {
  static const dateOfBirthKey = "dateOfBirth";
  static const emailKey = "email";
  static const fullnameKey = "fullname";
  static const phoneKey = "phone";
  static const photoUrlKey = "photoUrl";

  factory UserEntityDto({
    @JsonKey(ignore: true) String? id,
    @JsonKey(name: UserEntityDto.fullnameKey) required String fullname,
    @JsonKey(name: UserEntityDto.dateOfBirthKey) DateTime? dateOfBirth,
    @JsonKey(name: UserEntityDto.emailKey) String? email,
    @JsonKey(name: UserEntityDto.phoneKey) String? phone,
    @JsonKey(name: UserEntityDto.photoUrlKey) String? photoUrl,
  }) = _UserEntityDto;

  factory UserEntityDto.fromDomain(UserEntity user) {
    return UserEntityDto(
      id: user.id,
      fullname: user.fullname,
      dateOfBirth: user.dateOfBirth,
    );
  }

  factory UserEntityDto.fromJson(Map<String, dynamic> json) =>
      _$UserEntityDtoFromJson(json);
}

extension UserEntityDtoX on UserEntityDto {
  UserEntity toDomain() {
    return UserEntity(
      id: id,
      fullname: fullname,
      dateOfBirth: dateOfBirth,
      email: email,
      phone: phone,
      photoUrl: photoUrl,
    );
  }
}
