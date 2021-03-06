import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../routes/router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../providers/user_provider.dart';

class RootPage extends HookConsumerWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// Listen to auth , if user signed out, Navigate to sign in page.
    ref.listen<AuthState>(
      authControllerProvider,
      (_, next) {
        next.whenOrNull(
          unauthenticated: () async {
            context.router.replace(const SignInRoute());
          },
        );
      },
    );

    /// Listen to user data. if user has not filled required information
    /// Navigate to register page
    ref.listen<UserState>(
      userControllerProvider,
      (previous, next) {
        next.failureOption.match(
          (failure) {
            failure.whenOrNull(
              missedRequiredInfoField: (_) async {
                BotToast.showLoading();
                // Delay abit to tell user why
                await Future.delayed(const Duration(seconds: 1));
                BotToast.showNotification(
                  title: (_) => const Text('Please fill required information'),
                );
                context.router.replace(UserRegisterRoute());
                BotToast.closeAllLoading();
              },
            );
          },
          () => null,
        );
      },
    );

    return AutoTabsScaffold(
      routes: const [
        HomeRouter(),
        HistoryRouter(),
        InboxRouter(),
        AccountRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(height: 0),
            SalomonBottomBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: [
                SalomonBottomBarItem(
                  icon: const Icon(Icons.home),
                  title: const Text('Home'),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.history),
                  title: const Text('History'),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.inbox),
                  title: const Text('Inbox'),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.person),
                  title: const Text('Account'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
