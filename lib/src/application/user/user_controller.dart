import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/application/auth/auth_state.dart';
import 'package:nu_share_destination_user/src/application/user/user_state.dart';
import 'package:nu_share_destination_user/src/domain/user/i_user_repository.dart';
import 'package:nu_share_destination_user/src/domain/user/user_entity.dart';
import 'package:nu_share_destination_user/src/domain/user/user_failure.dart';

class UserControllerNotifier extends StateNotifier<UserState> {
  UserControllerNotifier(this._authState, this._repository)
      : super(UserState.initial()) {
    _streamSubscription?.cancel();
    _authState.map(
      authenticated: (value) {
        _streamSubscription = _repository.watchOne(value.uid).listen(
          (userOrFailure) {
            userOrFailure.fold(
              (failure) {
                state = state.copyWith(
                  user: none(),
                  failureOption: some(failure),
                );
              },
              (user) {
                state = state.copyWith(
                  user: some(user),
                  failureOption: none(),
                );
              },
            );
          },
        );
      },
      unauthenticated: (_) {
        _streamSubscription?.cancel();
        state = UserState.initial();
      },
      initial: (Initial value) {},
    );
  }

  final IUserRepository _repository;
  StreamSubscription<Either<UserFailure, UserEntity>>? _streamSubscription;
  final AuthState _authState;

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }
}
