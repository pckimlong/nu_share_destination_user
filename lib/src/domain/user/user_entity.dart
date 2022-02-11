import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nu_share_destination_user/src/domain/_core/value_object.dart';
import 'package:nu_share_destination_user/src/domain/user/value_objects.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    required UniqueId id,
    required FullName fullname,
    required DateOfBirth? dateOfBirth,
  }) = _UserEntity;
}
