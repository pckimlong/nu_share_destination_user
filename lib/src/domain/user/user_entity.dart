import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    required String? id,
    required String fullname,
    required String? email,
    required String? phone,
    required String? photoUrl,
  }) = _UserEntity;
}
