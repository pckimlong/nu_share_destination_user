import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated(String uid) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.initial() = Initial;
}

// @freezed
// class AuthState with _$AuthState {
//   const AuthState._();
//   factory AuthState({
//     required Option<String> authUserId,
//     required bool isUserCheckedFromAuthServer,
//   }) = _AuthState;

//   factory AuthState.initial() {
//     return AuthState(
//       authUserId: none(),
//       isUserCheckedFromAuthServer: false,
//     );
//   }

//   bool get isLoggedIn => authUserId.isSome();
// }

