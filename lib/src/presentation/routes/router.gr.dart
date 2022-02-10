// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i10;

import '../module/account/account_page.dart' as _i9;
import '../module/auth/sign_in_page.dart' as _i2;
import '../module/history/detail/history_detail_page.dart' as _i7;
import '../module/history/list/history_list_page.dart' as _i6;
import '../module/home/home_page.dart' as _i4;
import '../module/inbox/list/inbox_list_page.dart' as _i8;
import '../module/root/root_page.dart' as _i3;
import '../module/splash/splash_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RootRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RootPage());
    },
    HomeRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    HistoryRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    InboxRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    AccountRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    HistoryListRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.HistoryListPage());
    },
    HistoryDetailRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.HistoryDetailPage());
    },
    InboxListRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.InboxListPage());
    },
    AccountRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.AccountPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name, path: '/'),
        _i5.RouteConfig(SignInRoute.name, path: '/sign-in'),
        _i5.RouteConfig(RootRoute.name, path: '/root', children: [
          _i5.RouteConfig(HomeRouter.name,
              path: 'home', parent: RootRoute.name),
          _i5.RouteConfig(HistoryRouter.name,
              path: 'histories',
              parent: RootRoute.name,
              children: [
                _i5.RouteConfig(HistoryListRoute.name,
                    path: '', parent: HistoryRouter.name),
                _i5.RouteConfig(HistoryDetailRoute.name,
                    path: ':historyId', parent: HistoryRouter.name)
              ]),
          _i5.RouteConfig(InboxRouter.name,
              path: 'inboxes',
              parent: RootRoute.name,
              children: [
                _i5.RouteConfig(InboxListRoute.name,
                    path: '', parent: InboxRouter.name)
              ]),
          _i5.RouteConfig(AccountRouter.name,
              path: 'account',
              parent: RootRoute.name,
              children: [
                _i5.RouteConfig(AccountRoute.name,
                    path: '', parent: AccountRouter.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i5.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.RootPage]
class RootRoute extends _i5.PageRouteInfo<void> {
  const RootRoute({List<_i5.PageRouteInfo>? children})
      : super(RootRoute.name, path: '/root', initialChildren: children);

  static const String name = 'RootRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRouter extends _i5.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'home');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class HistoryRouter extends _i5.PageRouteInfo<void> {
  const HistoryRouter({List<_i5.PageRouteInfo>? children})
      : super(HistoryRouter.name, path: 'histories', initialChildren: children);

  static const String name = 'HistoryRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class InboxRouter extends _i5.PageRouteInfo<void> {
  const InboxRouter({List<_i5.PageRouteInfo>? children})
      : super(InboxRouter.name, path: 'inboxes', initialChildren: children);

  static const String name = 'InboxRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class AccountRouter extends _i5.PageRouteInfo<void> {
  const AccountRouter({List<_i5.PageRouteInfo>? children})
      : super(AccountRouter.name, path: 'account', initialChildren: children);

  static const String name = 'AccountRouter';
}

/// generated route for
/// [_i6.HistoryListPage]
class HistoryListRoute extends _i5.PageRouteInfo<void> {
  const HistoryListRoute() : super(HistoryListRoute.name, path: '');

  static const String name = 'HistoryListRoute';
}

/// generated route for
/// [_i7.HistoryDetailPage]
class HistoryDetailRoute extends _i5.PageRouteInfo<void> {
  const HistoryDetailRoute()
      : super(HistoryDetailRoute.name, path: ':historyId');

  static const String name = 'HistoryDetailRoute';
}

/// generated route for
/// [_i8.InboxListPage]
class InboxListRoute extends _i5.PageRouteInfo<void> {
  const InboxListRoute() : super(InboxListRoute.name, path: '');

  static const String name = 'InboxListRoute';
}

/// generated route for
/// [_i9.AccountPage]
class AccountRoute extends _i5.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: '');

  static const String name = 'AccountRoute';
}
