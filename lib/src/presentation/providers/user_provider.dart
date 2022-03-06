import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/driver/domain/domain.dart';
import '../../domain/core/errors.dart';
import '../../../src2/domain/repositories/i_user_repository.dart';
import '../../domain/user/user_entity.dart';
import '../../../src2/domain/failures/user_failure.dart';
import '../core/service_providers.dart';

part 'user_provider.freezed.dart';

final authControllerProvider =
    StateNotifierProvider<AuthControllerNotifier, AuthState>((ref) {
  final authFacade = ref.watch(authFacadeProvider);
  return AuthControllerNotifier(authFacade);
});

final userControllerProvider =
    StateNotifierProvider<UserControllerNotifier, UserState>((ref) {
  final userRepos = ref.watch(userReposProvider);
  final authState = ref.watch(authControllerProvider);
  return UserControllerNotifier(authState, userRepos);
});

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated(String uid) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.initial() = Initial;
}

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

class AuthControllerNotifier extends StateNotifier<AuthState> {
  AuthControllerNotifier(this._authFacade) : super(const AuthState.initial()) {
    _bindStream();
  }

  final IAuthFacade _authFacade;
  StreamSubscription<Option<String>>? _streamSubscription;

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

  void _bindStream() {
    _streamSubscription?.cancel();
    _streamSubscription = _authFacade.watchAuthStateChanges().listen(
      (authUserOption) {
        authUserOption.match(
          (uid) => state = AuthState.authenticated(uid),
          () => state = const AuthState.unauthenticated(),
        );
      },
    );
  }

  Future<void> signInWithGoogle() async {
    await _authFacade.signInWithGoogle();
  }

  Future<void> signInWithFacebook() async {
    await _authFacade.signInWithFacebook();
  }

  Future<void> signOut() async {
    await _authFacade.signOut();
    state = const AuthState.initial();
  }
}

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
