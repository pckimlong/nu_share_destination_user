import 'package:auto_route/auto_route.dart';
import 'package:nu_share_destination_user/src/presentation/module/account/account_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/auth/sign_in_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/history/detail/history_detail_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/history/list/history_list_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/home/home_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/inbox/list/inbox_list_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/root/root_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/splash/splash_page.dart';
import 'package:nu_share_destination_user/src/presentation/routes/router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: [
    AutoRoute(
      path: '/',
      initial: true,
      page: SplashPage,
    ),
    AutoRoute(
      path: '/sign-in',
      page: SignInPage,
    ),

    //! Root-----------------------------
    AutoRoute(
      path: '/root',
      page: RootPage,
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: HomePage,
        ),

        //! History ----------------------------
        AutoRoute(
          path: 'histories',
          name: 'HistoryRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: HistoryListPage,
            ),
            AutoRoute(
              path: ':historyId',
              page: HistoryDetailPage,
            ),
          ],
        ),

        AutoRoute(
          path: 'inboxes',
          name: 'InboxRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: InboxListPage,
            ),
          ],
        ),

        AutoRoute(
          path: 'account',
          name: 'AccountRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: AccountPage,
            )
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
