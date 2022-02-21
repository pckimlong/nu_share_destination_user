import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/core/errors.dart';

import '../../domain/user/user_entity.dart';
import '../../domain/user/user_failure.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
    required Option<UserEntity> user,
    required Option<UserFailure> failureOption,
  }) = _UserState;

  const UserState._();

  factory UserState.initial() => UserState(user: none(), failureOption: none());

  /// Get the current user. if it is none() throw error
  UserEntity get userOrCrash =>
      user.getOrElse(() => throw EmptyRequiredFieldError(user));
  bool get isLoggedIn => user.isSome();
  bool get hasError => failureOption.isSome();
}
