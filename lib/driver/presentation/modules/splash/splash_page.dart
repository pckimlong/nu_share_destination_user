import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_utilz.dart';
import '../../presentations.dart';
import '../../provider/auth_provider.dart';
import '../../widgets/widgets.dart';
import '../root/root_page.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(
      authProvider,
      (_, next) {
        next.maybeWhen(
          authenticated: (_) async {
            await Future.delayed(const Duration(seconds: 1));
            return AppUtilzs.pushReplace(context, (_) => const RootPage());
          },
          unauthenticated: () async {
            await Future.delayed(const Duration(seconds: 1));
            return AppUtilzs.pushReplace(context, (_) => const SignInPage());
          },
          orElse: () {},
        );
      },
    );

    return const Scaffold(body: Center(child: AppLogo(size: 120)));
  }
}
