import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../auth/auth_state.dart';
import 'user_state.dart';
import '../../domain/user/i_user_repository.dart';
import '../../domain/user/user_entity.dart';
import '../../domain/user/user_failure.dart';

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
                failure.maybeWhen(
                  missedRequiredInfoField: (missInfoUser) {
                    state = state.copyWith(
                      user: some(missInfoUser),
                      failureOption: some(failure),
                    );
                  },
                  orElse: () {
                    state = state.copyWith(
                      user: none(),
                      failureOption: some(failure),
                    );
                  },
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

  Future<void> update({
    required String fullName,
    required String? email,
    required String? phone,
  }) async {
    final entity = state.user.getOrElse(() => throw Error());
    final result = await _repository.update(
      entity.copyWith(
        fullname: fullName,
        email: email,
        phone: phone,
      ),
    );
    result.fold(
      (failure) => state = state.copyWith(failureOption: some(failure)),
      (r) => state = state.copyWith(failureOption: none()),
    );
  }
}
