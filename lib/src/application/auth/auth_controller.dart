import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/application/auth/auth_state.dart';
import 'package:nu_share_destination_user/src/domain/auth/i_auth_facade.dart';

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
        authUserOption.fold(
          () => state = const AuthState.unauthenticated(),
          (uid) => state = AuthState.authenticated(uid),
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
  }
}
