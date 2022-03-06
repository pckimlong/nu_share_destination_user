// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/domain.dart';
part "user_dto.freezed.dart";
part "user_dto.g.dart";

@freezed
class UserDto with _$UserDto {
  const UserDto._();
  static const dateOfBirthKey = "dateOfBirth";
  static const emailKey = "email";
  static const fullnameKey = "fullname";
  static const phoneKey = "phone";
  static const photoUrlKey = "photoUrl";

  factory UserDto({
    @JsonKey(ignore: true) String? id,

    /// Fullname
    @JsonKey(name: UserDto.fullnameKey) @Default('') String fullname,
    @JsonKey(name: UserDto.dateOfBirthKey) DateTime? dateOfBirth,
    @JsonKey(name: UserDto.emailKey) String? email,
    @JsonKey(name: UserDto.phoneKey) String? phone,
    @JsonKey(name: UserDto.photoUrlKey) String? photoUrl,
  }) = _UserDto;

  /// User not register yet, No any information like name
  bool get isUnregistered => fullname.trim().isEmpty;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id,
      fullname: user.fullname,
      email: user.email,
      phone: user.phone,
      photoUrl: user.photoUrl,
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

extension UserDtoX on UserDto {
  User toDomain() {
    return User(
      id: id,
      fullname: fullname,
      email: email,
      phone: phone,
      photoUrl: photoUrl,
    );
  }
}
