import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'auth_state.dart';
import '../../domain/auth/i_auth_facade.dart';

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
