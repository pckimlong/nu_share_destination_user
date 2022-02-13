import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nu_share_destination_user/src/presentation/routes/router.gr.dart';

import '../_core/app_styles.dart';
import '../routes/router_obs.dart';

class AppWidget extends HookWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = useMemoized<AppRouter>(() => AppRouter());

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () => [
          BotToastNavigatorObserver(),
          MyRouterObserver(),
        ],
      ),
      theme: ThemeData(
        appBarTheme: ThemeData().appBarTheme.copyWith(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              elevation: 0,
              titleSpacing: 0.0,
              centerTitle: true,
            ),
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        hintColor: AppColors.hintColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      builder: BotToastInit(),
    );
  }
}
