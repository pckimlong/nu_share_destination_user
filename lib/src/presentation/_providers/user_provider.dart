import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../application/auth/auth_controller.dart';
import '../../application/auth/auth_state.dart';
import '../../application/user/user_controller.dart';
import '../../application/user/user_state.dart';
import '../_core/service_providers.dart';

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
