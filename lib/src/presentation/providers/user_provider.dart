import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../dependency_injection.dart';
import '../../core/errors.dart';
import '../../domain/domain.dart';

part 'user_provider.freezed.dart';

final authControllerProvider =
    StateNotifierProvider<AuthControllerNotifier, AuthState>((ref) {
  final authFacade = ref.watch(authRepoProvider);
  return AuthControllerNotifier(authFacade);
});

final userControllerProvider =
    StateNotifierProvider<UserControllerNotifier, UserState>((ref) {
  final userRepos = ref.watch(userReposProvider);
  final authState = ref.watch(authControllerProvider);
  final locationService = ref.watch(locationServiceProvider);
  return UserControllerNotifier(authState, userRepos, locationService);
});

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated(String uid) = Authenticated;

  const factory AuthState.initial() = Initial;

  const factory AuthState.unauthenticated() = Unauthenticated;
}

@freezed
class UserState with _$UserState {
  factory UserState({
    required Option<User> user,
    required Option<UserFailure> failureOption,
    required Option<Coordinate> initialCoordinate,
  }) = _UserState;

  const UserState._();

  factory UserState.initial() => UserState(
        user: none(),
        failureOption: none(),
        initialCoordinate: none(),
      );

  bool get hasError => failureOption.isSome();

  bool get isLoggedIn => user.isSome();

  /// Get the current user. if it is none() throw error
  User get userOrCrash =>
      user.getOrElse(() => throw EmptyRequiredFieldError(user));
}

class AuthControllerNotifier extends StateNotifier<AuthState> {
  AuthControllerNotifier(this._authFacade) : super(const AuthState.initial()) {
    _bindStream();
  }

  final IAuthRepository _authFacade;
  StreamSubscription<Option<String>>? _streamSubscription;

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

  Future<void> signInWithFacebook() async {
    await _authFacade.signInWithFacebook();
  }

  Future<void> signInWithGoogle() async {
    await _authFacade.signInWithGoogle();
  }

  Future<void> signOut() async {
    await _authFacade.signOut();
    state = const AuthState.initial();
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
}

class UserControllerNotifier extends StateNotifier<UserState> {
  UserControllerNotifier(
    this._authState,
    this._repository,
    this._locationService,
  ) : super(UserState.initial()) {
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
    _getInitialUserCoordinate();
  }

  final AuthState _authState;
  final IUserRepository _repository;
  final ILocationService _locationService;
  StreamSubscription<Either<UserFailure, User>>? _streamSubscription;

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

  void _getInitialUserCoordinate() async {
    final coor = await _locationService.getMyCoordinate();
    coor.fold((l) => null, (coor) {
      state = state.copyWith(initialCoordinate: some(coor));
    });
  }

  Future<void> update({
    required String fullName,
    required String? email,
    required String? phone,
  }) async {
    final user = state.user.getOrElse(() => throw Error());
    final result = await _repository.update(
      user.copyWith(
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
