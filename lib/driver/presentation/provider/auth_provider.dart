// import 'dart:async';

// import 'package:fpdart/fpdart.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import '../../domain/domain.dart';
// import '../core/core.dart';

// part 'auth_provider.freezed.dart';

// final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
//   final authFacade = ref.watch(authFacadeProvider);
//   return AuthNotifier(authFacade);
// });

// @freezed
// class AuthState with _$AuthState {
//   const factory AuthState.authenticated(String uid) = Authenticated;

//   const factory AuthState.initial() = Initial;

//   const factory AuthState.unauthenticated() = Unauthenticated;
// }

// class AuthNotifier extends StateNotifier<AuthState> {
//   AuthNotifier(this._authFacade) : super(const AuthState.initial()) {
//     _bindStream();
//   }

//   final IAuthFacade _authFacade;
//   StreamSubscription<Option<String>>? _streamSubscription;

//   @override
//   void dispose() {
//     _streamSubscription?.cancel();
//     super.dispose();
//   }

//   Future<void> signIn({
//     required String email,
//     required String password,
//   }) async {
//     await _authFacade.signInWithEmailPassword(email: email, password: password);
//   }

//   Future<void> signOut() async {
//     await _authFacade.signOut();
//   }

//   void _bindStream() {
//     _streamSubscription?.cancel();
//     _streamSubscription = _authFacade.watchAuthStateChanges().listen(
//       (authUserOption) {
//         authUserOption.match(
//           (uid) => state = AuthState.authenticated(uid),
//           () => state = const AuthState.unauthenticated(),
//         );
//       },
//     );
//   }
// }
