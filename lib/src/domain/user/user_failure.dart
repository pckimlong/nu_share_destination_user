import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

@freezed
abstract class UserFailure with _$UserFailure {
  const factory UserFailure.userNotExisted() = UserNotExisted;
  const factory UserFailure.serverError() = ServerError;
  const factory UserFailure.errorCreatingUser() = ErrorCreatingUser;
  const factory UserFailure.errorUpdatingUser() = ErrorUpdatingUser;
}
