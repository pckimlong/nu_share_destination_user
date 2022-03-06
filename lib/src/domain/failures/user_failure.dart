import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/user.dart';

part "user_failure.freezed.dart";

@freezed
abstract class UserFailure with _$UserFailure {
  const factory UserFailure.userNotExisted() = UserNotExisted;

  /// If user not filled required information like their full name, etc
  const factory UserFailure.missedRequiredInfoField(User user) =
      MissedRequiredInfoField;
  const factory UserFailure.serverError() = ServerError;
  const factory UserFailure.errorCreatingUser() = ErrorCreatingUser;
  const factory UserFailure.errorUpdatingUser() = ErrorUpdatingUser;
}
