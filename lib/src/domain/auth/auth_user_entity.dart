import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user_entity.freezed.dart';

@freezed
class AuthUserEntity with _$AuthUserEntity {
  factory AuthUserEntity({
    required String? uid,
    required String? fullname,
    required String? email,
    required bool? emailVerified,
    required String? phoneNumber,
    required String? photoURL,
  }) = _AuthUserEntity;
}
