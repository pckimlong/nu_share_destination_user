// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i21;

import '../module/account/account_page.dart' as _i20;
import '../module/account/edit/edit_profile_page.dart' as _i4;
import '../module/account/register/user_register_page.dart' as _i3;
import '../module/auth/sign_in_page.dart' as _i2;
import '../module/contact_us/contact_us_page.dart' as _i12;
import '../module/history/detail/history_detail_page.dart' as _i18;
import '../module/history/list/history_list_page.dart' as _i17;
import '../module/home/home_page.dart' as _i15;
import '../module/inbox/list/inbox_list_page.dart' as _i19;
import '../module/message/list/message_list_page.dart' as _i13;
import '../module/payment/list/payment_list_page.dart' as _i8;
import '../module/payment/picker/payment_picker_page.dart' as _i9;
import '../module/root/root_page.dart' as _i14;
import '../module/saved_place/list/saved_places_list_page.dart' as _i10;
import '../module/saved_place/picker/saved_places_picker_page.dart' as _i11;
import '../module/setting/setting_page.dart' as _i7;
import '../module/splash/splash_page.dart' as _i1;
import '../module/voucher/list/voucher_list_page.dart' as _i5;
import '../module/voucher/picker/voucher_picker_page.dart' as _i6;

class AppRouter extends _i16.RootStackRouter {
  AppRouter([_i21.GlobalKey<_i21.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    UserRegisterRoute.name: (routeData) {
      final args = routeData.argsAs<UserRegisterRouteArgs>(
          orElse: () => const UserRegisterRouteArgs());
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i3.UserRegisterPage(
              key: args.key, openAsRegister: args.openAsRegister));
    },
    EditProfileRoute.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.EditProfilePage());
    },
    VoucherListRoute.name: (routeData) {
      final args = routeData.argsAs<VoucherListRouteArgs>(
          orElse: () => const VoucherListRouteArgs());
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i5.VoucherListPage(
              key: args.key, openAsPicker: args.openAsPicker));
    },
    VoucherPickerRoute.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i6.VoucherPickerPage());
    },
    SettingRoute.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.SettingPage());
    },
    PaymentListRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentListRouteArgs>(
          orElse: () => const PaymentListRouteArgs());
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i8.PaymentListPage(
              key: args.key, openAsPicker: args.openAsPicker));
    },
    PaymentPickerRoute.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i9.PaymentPickerPage());
    },
    SavedPlaceListRoute.name: (routeData) {
      final args = routeData.argsAs<SavedPlaceListRouteArgs>(
          orElse: () => const SavedPlaceListRouteArgs());
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i10.SavedPlaceListPage(
              key: args.key, openAsPicker: args.openAsPicker));
    },
    SavedPlacePickerRoute.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i11.SavedPlacePickerPage());
    },
    ContactUsRoute.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i12.ContactUsPage());
    },
    MessageListRoute.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i13.MessageListPage());
    },
    RootRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i14.RootPage(),
          transitionsBuilder: _i16.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRouter.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i15.HomePage());
    },
    HistoryRouter.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i16.EmptyRouterPage());
    },
    InboxRouter.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i16.EmptyRouterPage());
    },
    AccountRouter.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i16.EmptyRouterPage());
    },
    HistoryListRoute.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i17.HistoryListPage());
    },
    HistoryDetailRoute.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i18.HistoryDetailPage());
    },
    InboxListRoute.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i19.InboxListPage());
    },
    AccountRoute.name: (routeData) {
      return _i16.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i20.AccountPage());
    }
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(SplashRoute.name, path: '/'),
        _i16.RouteConfig(SignInRoute.name, path: '/sign-in'),
        _i16.RouteConfig(UserRegisterRoute.name, path: '/register'),
        _i16.RouteConfig(EditProfileRoute.name, path: '/edit-profile'),
        _i16.RouteConfig(VoucherListRoute.name, path: '/vouchers-list'),
        _i16.RouteConfig(VoucherPickerRoute.name, path: '/voucher-picker'),
        _i16.RouteConfig(SettingRoute.name, path: '/setting'),
        _i16.RouteConfig(PaymentListRoute.name, path: '/payments-list'),
        _i16.RouteConfig(PaymentPickerRoute.name, path: '/payment-picker'),
        _i16.RouteConfig(SavedPlaceListRoute.name, path: '/saved-places-list'),
        _i16.RouteConfig(SavedPlacePickerRoute.name,
            path: '/saved-place-picker'),
        _i16.RouteConfig(ContactUsRoute.name, path: '/contact-us'),
        _i16.RouteConfig(MessageListRoute.name, path: '/messages'),
        _i16.RouteConfig(RootRoute.name, path: '/root', children: [
          _i16.RouteConfig(HomeRouter.name,
              path: 'home', parent: RootRoute.name),
          _i16.RouteConfig(HistoryRouter.name,
              path: 'histories',
              parent: RootRoute.name,
              children: [
                _i16.RouteConfig(HistoryListRoute.name,
                    path: '', parent: HistoryRouter.name),
                _i16.RouteConfig(HistoryDetailRoute.name,
                    path: ':historyId', parent: HistoryRouter.name)
              ]),
          _i16.RouteConfig(InboxRouter.name,
              path: 'inboxes',
              parent: RootRoute.name,
              children: [
                _i16.RouteConfig(InboxListRoute.name,
                    path: '', parent: InboxRouter.name)
              ]),
          _i16.RouteConfig(AccountRouter.name,
              path: 'account',
              parent: RootRoute.name,
              children: [
                _i16.RouteConfig(AccountRoute.name,
                    path: '', parent: AccountRouter.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i16.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.UserRegisterPage]
class UserRegisterRoute extends _i16.PageRouteInfo<UserRegisterRouteArgs> {
  UserRegisterRoute({_i21.Key? key, bool openAsRegister = true})
      : super(UserRegisterRoute.name,
            path: '/register',
            args: UserRegisterRouteArgs(
                key: key, openAsRegister: openAsRegister));

  static const String name = 'UserRegisterRoute';
}

class UserRegisterRouteArgs {
  const UserRegisterRouteArgs({this.key, this.openAsRegister = true});

  final _i21.Key? key;

  final bool openAsRegister;

  @override
  String toString() {
    return 'UserRegisterRouteArgs{key: $key, openAsRegister: $openAsRegister}';
  }
}

/// generated route for
/// [_i4.EditProfilePage]
class EditProfileRoute extends _i16.PageRouteInfo<void> {
  const EditProfileRoute()
      : super(EditProfileRoute.name, path: '/edit-profile');

  static const String name = 'EditProfileRoute';
}

/// generated route for
/// [_i5.VoucherListPage]
class VoucherListRoute extends _i16.PageRouteInfo<VoucherListRouteArgs> {
  VoucherListRoute({_i21.Key? key, bool openAsPicker = false})
      : super(VoucherListRoute.name,
            path: '/vouchers-list',
            args: VoucherListRouteArgs(key: key, openAsPicker: openAsPicker));

  static const String name = 'VoucherListRoute';
}

class VoucherListRouteArgs {
  const VoucherListRouteArgs({this.key, this.openAsPicker = false});

  final _i21.Key? key;

  final bool openAsPicker;

  @override
  String toString() {
    return 'VoucherListRouteArgs{key: $key, openAsPicker: $openAsPicker}';
  }
}

/// generated route for
/// [_i6.VoucherPickerPage]
class VoucherPickerRoute extends _i16.PageRouteInfo<void> {
  const VoucherPickerRoute()
      : super(VoucherPickerRoute.name, path: '/voucher-picker');

  static const String name = 'VoucherPickerRoute';
}

/// generated route for
/// [_i7.SettingPage]
class SettingRoute extends _i16.PageRouteInfo<void> {
  const SettingRoute() : super(SettingRoute.name, path: '/setting');

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i8.PaymentListPage]
class PaymentListRoute extends _i16.PageRouteInfo<PaymentListRouteArgs> {
  PaymentListRoute({_i21.Key? key, bool openAsPicker = false})
      : super(PaymentListRoute.name,
            path: '/payments-list',
            args: PaymentListRouteArgs(key: key, openAsPicker: openAsPicker));

  static const String name = 'PaymentListRoute';
}

class PaymentListRouteArgs {
  const PaymentListRouteArgs({this.key, this.openAsPicker = false});

  final _i21.Key? key;

  final bool openAsPicker;

  @override
  String toString() {
    return 'PaymentListRouteArgs{key: $key, openAsPicker: $openAsPicker}';
  }
}

/// generated route for
/// [_i9.PaymentPickerPage]
class PaymentPickerRoute extends _i16.PageRouteInfo<void> {
  const PaymentPickerRoute()
      : super(PaymentPickerRoute.name, path: '/payment-picker');

  static const String name = 'PaymentPickerRoute';
}

/// generated route for
/// [_i10.SavedPlaceListPage]
class SavedPlaceListRoute extends _i16.PageRouteInfo<SavedPlaceListRouteArgs> {
  SavedPlaceListRoute({_i21.Key? key, bool openAsPicker = false})
      : super(SavedPlaceListRoute.name,
            path: '/saved-places-list',
            args:
                SavedPlaceListRouteArgs(key: key, openAsPicker: openAsPicker));

  static const String name = 'SavedPlaceListRoute';
}

class SavedPlaceListRouteArgs {
  const SavedPlaceListRouteArgs({this.key, this.openAsPicker = false});

  final _i21.Key? key;

  final bool openAsPicker;

  @override
  String toString() {
    return 'SavedPlaceListRouteArgs{key: $key, openAsPicker: $openAsPicker}';
  }
}

/// generated route for
/// [_i11.SavedPlacePickerPage]
class SavedPlacePickerRoute extends _i16.PageRouteInfo<void> {
  const SavedPlacePickerRoute()
      : super(SavedPlacePickerRoute.name, path: '/saved-place-picker');

  static const String name = 'SavedPlacePickerRoute';
}

/// generated route for
/// [_i12.ContactUsPage]
class ContactUsRoute extends _i16.PageRouteInfo<void> {
  const ContactUsRoute() : super(ContactUsRoute.name, path: '/contact-us');

  static const String name = 'ContactUsRoute';
}

/// generated route for
/// [_i13.MessageListPage]
class MessageListRoute extends _i16.PageRouteInfo<void> {
  const MessageListRoute() : super(MessageListRoute.name, path: '/messages');

  static const String name = 'MessageListRoute';
}

/// generated route for
/// [_i14.RootPage]
class RootRoute extends _i16.PageRouteInfo<void> {
  const RootRoute({List<_i16.PageRouteInfo>? children})
      : super(RootRoute.name, path: '/root', initialChildren: children);

  static const String name = 'RootRoute';
}

/// generated route for
/// [_i15.HomePage]
class HomeRouter extends _i16.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'home');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i16.EmptyRouterPage]
class HistoryRouter extends _i16.PageRouteInfo<void> {
  const HistoryRouter({List<_i16.PageRouteInfo>? children})
      : super(HistoryRouter.name, path: 'histories', initialChildren: children);

  static const String name = 'HistoryRouter';
}

/// generated route for
/// [_i16.EmptyRouterPage]
class InboxRouter extends _i16.PageRouteInfo<void> {
  const InboxRouter({List<_i16.PageRouteInfo>? children})
      : super(InboxRouter.name, path: 'inboxes', initialChildren: children);

  static const String name = 'InboxRouter';
}

/// generated route for
/// [_i16.EmptyRouterPage]
class AccountRouter extends _i16.PageRouteInfo<void> {
  const AccountRouter({List<_i16.PageRouteInfo>? children})
      : super(AccountRouter.name, path: 'account', initialChildren: children);

  static const String name = 'AccountRouter';
}

/// generated route for
/// [_i17.HistoryListPage]
class HistoryListRoute extends _i16.PageRouteInfo<void> {
  const HistoryListRoute() : super(HistoryListRoute.name, path: '');

  static const String name = 'HistoryListRoute';
}

/// generated route for
/// [_i18.HistoryDetailPage]
class HistoryDetailRoute extends _i16.PageRouteInfo<void> {
  const HistoryDetailRoute()
      : super(HistoryDetailRoute.name, path: ':historyId');

  static const String name = 'HistoryDetailRoute';
}

/// generated route for
/// [_i19.InboxListPage]
class InboxListRoute extends _i16.PageRouteInfo<void> {
  const InboxListRoute() : super(InboxListRoute.name, path: '');

  static const String name = 'InboxListRoute';
}

/// generated route for
/// [_i20.AccountPage]
class AccountRoute extends _i16.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: '');

  static const String name = 'AccountRoute';
}
