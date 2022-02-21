import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../modules/splash/splash_page.dart';

import '../core/core.dart';

class AppWidget extends HookWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorObservers: [BotToastNavigatorObserver()],
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
      home: const SplashPage(),
      builder: BotToastInit(),
    );
  }
}
// class AppWidget extends HookWidget {
//   const AppWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final _appRouter = useMemoized<AppRouter>(() => AppRouter());

//     return MaterialApp.router(
//       debugShowCheckedModeBanner: false,
//       routeInformationParser: _appRouter.defaultRouteParser(),
//       routerDelegate: _appRouter.delegate(
//         navigatorObservers: () => [
//           BotToastNavigatorObserver(),
//         ],
//       ),
//       theme: ThemeData(
//         appBarTheme: ThemeData().appBarTheme.copyWith(
//               backgroundColor: Colors.white,
//               foregroundColor: Colors.black,
//               elevation: 0,
//               titleSpacing: 0.0,
//               centerTitle: true,
//             ),
//         primarySwatch: Colors.green,
//         primaryColor: Colors.green,
//         hintColor: AppColors.hintColor,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       builder: BotToastInit(),
//     );
//   }
// }
