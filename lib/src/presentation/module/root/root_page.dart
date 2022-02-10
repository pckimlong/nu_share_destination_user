import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nu_share_destination_user/src/presentation/routes/router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRouter(),
        HistoryRouter(),
        InboxRouter(),
        AccountRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
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
        );
      },
    );
  }
}
