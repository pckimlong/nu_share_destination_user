import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/application/auth/auth_controller.dart';
import 'package:nu_share_destination_user/src/application/auth/auth_state.dart';
import 'package:nu_share_destination_user/src/application/user/user_controller.dart';
import 'package:nu_share_destination_user/src/application/user/user_state.dart';
import 'package:nu_share_destination_user/src/presentation/_core/service_providers.dart';

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
