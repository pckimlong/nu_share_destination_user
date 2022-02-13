import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nu_share_destination_user/src/presentation/_core/app_permission.dart';

class MyRouterObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) async {
    debugPrint('New route pushed: ${route.settings.name}');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    debugPrint('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    debugPrint('Tab route re-visited: ${route.name}');
  }
}
