import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/presentation/routes/router.gr.dart';

import '../../../application/auth/auth_state.dart';
import '../../_providers/user_provider.dart';
import '../../routes/router.gr.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(
      authControllerProvider,
      (_, next) {
        next.maybeWhen(
          authenticated: (_) async {
            await Future.delayed(const Duration(seconds: 1));
            context.router.replace(const RootRoute());
          },
          unauthenticated: () async {
            await Future.delayed(const Duration(seconds: 1));
            context.router.replace(const SignInRoute());
          },
          orElse: () {},
        );
      },
    );

    return const Scaffold(
      body: Center(
        child: Text('NU Share Destionation'),
      ),
    );
  }
}
