// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/_core/value_object.dart';
import '../../domain/user/user_entity.dart';
import '../../domain/user/value_objects.dart';

part 'user_entity_dto.freezed.dart';
part 'user_entity_dto.g.dart';

@freezed
class UserEntityDto with _$UserEntityDto {
  static const fullnameKey = "fullname";
  static const dateOfBirthKey = "dateOfBirth";

  factory UserEntityDto({
    @JsonKey(ignore: true) String? id,
    @JsonKey(name: UserEntityDto.fullnameKey) required String fullname,
    @JsonKey(name: UserEntityDto.dateOfBirthKey) DateTime? dateOfBirth,
  }) = _UserEntityDto;

  factory UserEntityDto.fromJson(Map<String, dynamic> json) =>
      _$UserEntityDtoFromJson(json);

  factory UserEntityDto.fromDomain(UserEntity user) {
    return UserEntityDto(
      id: user.id.getOrCrash(),
      fullname: user.fullname.getOrCrash(),
      dateOfBirth: user.dateOfBirth?.getOrCrash(),
    );
  }
}

extension UserEntityDtoX on UserEntityDto {
  UserEntity toDomain() {
    return UserEntity(
      id: UniqueId.fromUniqueString(id!),
      fullname: FullName(fullname),
      dateOfBirth: dateOfBirth == null ? null : DateOfBirth(dateOfBirth!),
    );
  }
}
