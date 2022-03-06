// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i24;

import '../../domain/core/entities/location_address.dart' as _i25;
import '../modules/account/account_page.dart' as _i23;
import '../modules/account/edit/edit_profile_page.dart' as _i4;
import '../modules/account/register/user_register_page.dart' as _i3;
import '../modules/auth/sign_in_page.dart' as _i2;
import '../modules/common/location_picker_map_page.dart' as _i17;
import '../modules/common/text_input_page.dart' as _i16;
import '../modules/contact_us/contact_us_page.dart' as _i13;
import '../modules/history/detail/history_detail_page.dart' as _i21;
import '../modules/history/list/history_list_page.dart' as _i20;
import '../modules/home/home_page.dart' as _i18;
import '../modules/inbox/list/inbox_list_page.dart' as _i22;
import '../modules/message/list/message_list_page.dart' as _i14;
import '../modules/payment/list/payment_list_page.dart' as _i9;
import '../modules/payment/picker/payment_picker_page.dart' as _i10;
import '../modules/root/root_page.dart' as _i15;
import '../modules/saved_place/list/saved_places_list_page.dart' as _i11;
import '../modules/saved_place/picker/saved_places_picker_page.dart' as _i12;
import '../modules/setting/setting_page.dart' as _i8;
import '../modules/splash/splash_page.dart' as _i1;
import '../modules/trip/trip_page.dart' as _i5;
import '../modules/voucher/list/voucher_list_page.dart' as _i6;
import '../modules/voucher/picker/voucher_picker_page.dart' as _i7;

class AppRouter extends _i19.RootStackRouter {
  AppRouter([_i24.GlobalKey<_i24.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    UserRegisterRoute.name: (routeData) {
      final args = routeData.argsAs<UserRegisterRouteArgs>(
          orElse: () => const UserRegisterRouteArgs());
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i3.UserRegisterPage(
              key: args.key, openAsRegister: args.openAsRegister));
    },
    EditProfileRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.EditProfilePage());
    },
    TripRoute.name: (routeData) {
      final args = routeData.argsAs<TripRouteArgs>();
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i5.TripPage(key: args.key, vehicleTypes: args.vehicleTypes));
    },
    VoucherListRoute.name: (routeData) {
      final args = routeData.argsAs<VoucherListRouteArgs>(
          orElse: () => const VoucherListRouteArgs());
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i6.VoucherListPage(
              key: args.key, openAsPicker: args.openAsPicker));
    },
    VoucherPickerRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.VoucherPickerPage());
    },
    SettingRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i8.SettingPage());
    },
    PaymentListRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentListRouteArgs>(
          orElse: () => const PaymentListRouteArgs());
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i9.PaymentListPage(
              key: args.key, openAsPicker: args.openAsPicker));
    },
    PaymentPickerRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i10.PaymentPickerPage());
    },
    SavedPlaceListRoute.name: (routeData) {
      final args = routeData.argsAs<SavedPlaceListRouteArgs>(
          orElse: () => const SavedPlaceListRouteArgs());
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i11.SavedPlaceListPage(
              key: args.key, openAsPicker: args.openAsPicker));
    },
    SavedPlacePickerRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i12.SavedPlacePickerPage());
    },
    ContactUsRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i13.ContactUsPage());
    },
    MessageListRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i14.MessageListPage());
    },
    RootRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i15.RootPage(),
          transitionsBuilder: _i19.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    TextInputRoute.name: (routeData) {
      final args = routeData.argsAs<TextInputRouteArgs>();
      return _i19.CupertinoPageX<String?>(
          routeData: routeData,
          child: _i16.TextInputPage(
              key: args.key,
              pageTitle: args.pageTitle,
              initialText: args.initialText,
              submitButtonLabel: args.submitButtonLabel),
          fullscreenDialog: true);
    },
    LocationPickerFromMapRoute.name: (routeData) {
      final args = routeData.argsAs<LocationPickerFromMapRouteArgs>(
          orElse: () => const LocationPickerFromMapRouteArgs());
      return _i19.CupertinoPageX<_i25.LocationAddress?>(
          routeData: routeData,
          child: _i17.LocationPickerFromMapPage(
              key: args.key, initial: args.initial));
    },
    HomeRouter.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i18.HomePage());
    },
    HistoryRouter.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i19.EmptyRouterPage());
    },
    InboxRouter.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i19.EmptyRouterPage());
    },
    AccountRouter.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i19.EmptyRouterPage());
    },
    HistoryListRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i20.HistoryListPage());
    },
    HistoryDetailRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i21.HistoryDetailPage());
    },
    InboxListRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i22.InboxListPage());
    },
    AccountRoute.name: (routeData) {
      return _i19.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i23.AccountPage());
    }
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(SplashRoute.name, path: '/'),
        _i19.RouteConfig(SignInRoute.name, path: '/sign-in'),
        _i19.RouteConfig(UserRegisterRoute.name, path: '/register'),
        _i19.RouteConfig(EditProfileRoute.name, path: '/edit-profile'),
        _i19.RouteConfig(TripRoute.name, path: '/trip'),
        _i19.RouteConfig(VoucherListRoute.name, path: '/vouchers-list'),
        _i19.RouteConfig(VoucherPickerRoute.name, path: '/voucher-picker'),
        _i19.RouteConfig(SettingRoute.name, path: '/setting'),
        _i19.RouteConfig(PaymentListRoute.name, path: '/payments-list'),
        _i19.RouteConfig(PaymentPickerRoute.name, path: '/payment-picker'),
        _i19.RouteConfig(SavedPlaceListRoute.name, path: '/saved-places-list'),
        _i19.RouteConfig(SavedPlacePickerRoute.name,
            path: '/saved-place-picker'),
        _i19.RouteConfig(ContactUsRoute.name, path: '/contact-us'),
        _i19.RouteConfig(MessageListRoute.name, path: '/messages'),
        _i19.RouteConfig(RootRoute.name, path: '/root', children: [
          _i19.RouteConfig(HomeRouter.name,
              path: 'home', parent: RootRoute.name),
          _i19.RouteConfig(HistoryRouter.name,
              path: 'histories',
              parent: RootRoute.name,
              children: [
                _i19.RouteConfig(HistoryListRoute.name,
                    path: '', parent: HistoryRouter.name),
                _i19.RouteConfig(HistoryDetailRoute.name,
                    path: ':historyId', parent: HistoryRouter.name)
              ]),
          _i19.RouteConfig(InboxRouter.name,
              path: 'inboxes',
              parent: RootRoute.name,
              children: [
                _i19.RouteConfig(InboxListRoute.name,
                    path: '', parent: InboxRouter.name)
              ]),
          _i19.RouteConfig(AccountRouter.name,
              path: 'account',
              parent: RootRoute.name,
              children: [
                _i19.RouteConfig(AccountRoute.name,
                    path: '', parent: AccountRouter.name)
              ])
        ]),
        _i19.RouteConfig(TextInputRoute.name, path: '/text-input'),
        _i19.RouteConfig(LocationPickerFromMapRoute.name,
            path: '/location-picker-map')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i19.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i19.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.UserRegisterPage]
class UserRegisterRoute extends _i19.PageRouteInfo<UserRegisterRouteArgs> {
  UserRegisterRoute({_i24.Key? key, bool openAsRegister = true})
      : super(UserRegisterRoute.name,
            path: '/register',
            args: UserRegisterRouteArgs(
                key: key, openAsRegister: openAsRegister));

  static const String name = 'UserRegisterRoute';
}

class UserRegisterRouteArgs {
  const UserRegisterRouteArgs({this.key, this.openAsRegister = true});

  final _i24.Key? key;

  final bool openAsRegister;

  @override
  String toString() {
    return 'UserRegisterRouteArgs{key: $key, openAsRegister: $openAsRegister}';
  }
}

/// generated route for
/// [_i4.EditProfilePage]
class EditProfileRoute extends _i19.PageRouteInfo<void> {
  const EditProfileRoute()
      : super(EditProfileRoute.name, path: '/edit-profile');

  static const String name = 'EditProfileRoute';
}

/// generated route for
/// [_i5.TripPage]
class TripRoute extends _i19.PageRouteInfo<TripRouteArgs> {
  TripRoute({_i24.Key? key, required dynamic vehicleTypes})
      : super(TripRoute.name,
            path: '/trip',
            args: TripRouteArgs(key: key, vehicleTypes: vehicleTypes));

  static const String name = 'TripRoute';
}

class TripRouteArgs {
  const TripRouteArgs({this.key, required this.vehicleTypes});

  final _i24.Key? key;

  final dynamic vehicleTypes;

  @override
  String toString() {
    return 'TripRouteArgs{key: $key, vehicleTypes: $vehicleTypes}';
  }
}

/// generated route for
/// [_i6.VoucherListPage]
class VoucherListRoute extends _i19.PageRouteInfo<VoucherListRouteArgs> {
  VoucherListRoute({_i24.Key? key, bool openAsPicker = false})
      : super(VoucherListRoute.name,
            path: '/vouchers-list',
            args: VoucherListRouteArgs(key: key, openAsPicker: openAsPicker));

  static const String name = 'VoucherListRoute';
}

class VoucherListRouteArgs {
  const VoucherListRouteArgs({this.key, this.openAsPicker = false});

  final _i24.Key? key;

  final bool openAsPicker;

  @override
  String toString() {
    return 'VoucherListRouteArgs{key: $key, openAsPicker: $openAsPicker}';
  }
}

/// generated route for
/// [_i7.VoucherPickerPage]
class VoucherPickerRoute extends _i19.PageRouteInfo<void> {
  const VoucherPickerRoute()
      : super(VoucherPickerRoute.name, path: '/voucher-picker');

  static const String name = 'VoucherPickerRoute';
}

/// generated route for
/// [_i8.SettingPage]
class SettingRoute extends _i19.PageRouteInfo<void> {
  const SettingRoute() : super(SettingRoute.name, path: '/setting');

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i9.PaymentListPage]
class PaymentListRoute extends _i19.PageRouteInfo<PaymentListRouteArgs> {
  PaymentListRoute({_i24.Key? key, bool openAsPicker = false})
      : super(PaymentListRoute.name,
            path: '/payments-list',
            args: PaymentListRouteArgs(key: key, openAsPicker: openAsPicker));

  static const String name = 'PaymentListRoute';
}

class PaymentListRouteArgs {
  const PaymentListRouteArgs({this.key, this.openAsPicker = false});

  final _i24.Key? key;

  final bool openAsPicker;

  @override
  String toString() {
    return 'PaymentListRouteArgs{key: $key, openAsPicker: $openAsPicker}';
  }
}

/// generated route for
/// [_i10.PaymentPickerPage]
class PaymentPickerRoute extends _i19.PageRouteInfo<void> {
  const PaymentPickerRoute()
      : super(PaymentPickerRoute.name, path: '/payment-picker');

  static const String name = 'PaymentPickerRoute';
}

/// generated route for
/// [_i11.SavedPlaceListPage]
class SavedPlaceListRoute extends _i19.PageRouteInfo<SavedPlaceListRouteArgs> {
  SavedPlaceListRoute({_i24.Key? key, bool openAsPicker = false})
      : super(SavedPlaceListRoute.name,
            path: '/saved-places-list',
            args:
                SavedPlaceListRouteArgs(key: key, openAsPicker: openAsPicker));

  static const String name = 'SavedPlaceListRoute';
}

class SavedPlaceListRouteArgs {
  const SavedPlaceListRouteArgs({this.key, this.openAsPicker = false});

  final _i24.Key? key;

  final bool openAsPicker;

  @override
  String toString() {
    return 'SavedPlaceListRouteArgs{key: $key, openAsPicker: $openAsPicker}';
  }
}

/// generated route for
/// [_i12.SavedPlacePickerPage]
class SavedPlacePickerRoute extends _i19.PageRouteInfo<void> {
  const SavedPlacePickerRoute()
      : super(SavedPlacePickerRoute.name, path: '/saved-place-picker');

  static const String name = 'SavedPlacePickerRoute';
}

/// generated route for
/// [_i13.ContactUsPage]
class ContactUsRoute extends _i19.PageRouteInfo<void> {
  const ContactUsRoute() : super(ContactUsRoute.name, path: '/contact-us');

  static const String name = 'ContactUsRoute';
}

/// generated route for
/// [_i14.MessageListPage]
class MessageListRoute extends _i19.PageRouteInfo<void> {
  const MessageListRoute() : super(MessageListRoute.name, path: '/messages');

  static const String name = 'MessageListRoute';
}

/// generated route for
/// [_i15.RootPage]
class RootRoute extends _i19.PageRouteInfo<void> {
  const RootRoute({List<_i19.PageRouteInfo>? children})
      : super(RootRoute.name, path: '/root', initialChildren: children);

  static const String name = 'RootRoute';
}

/// generated route for
/// [_i16.TextInputPage]
class TextInputRoute extends _i19.PageRouteInfo<TextInputRouteArgs> {
  TextInputRoute(
      {_i24.Key? key,
      required String pageTitle,
      String? initialText,
      String submitButtonLabel = "Submit"})
      : super(TextInputRoute.name,
            path: '/text-input',
            args: TextInputRouteArgs(
                key: key,
                pageTitle: pageTitle,
                initialText: initialText,
                submitButtonLabel: submitButtonLabel));

  static const String name = 'TextInputRoute';
}

class TextInputRouteArgs {
  const TextInputRouteArgs(
      {this.key,
      required this.pageTitle,
      this.initialText,
      this.submitButtonLabel = "Submit"});

  final _i24.Key? key;

  final String pageTitle;

  final String? initialText;

  final String submitButtonLabel;

  @override
  String toString() {
    return 'TextInputRouteArgs{key: $key, pageTitle: $pageTitle, initialText: $initialText, submitButtonLabel: $submitButtonLabel}';
  }
}

/// generated route for
/// [_i17.LocationPickerFromMapPage]
class LocationPickerFromMapRoute
    extends _i19.PageRouteInfo<LocationPickerFromMapRouteArgs> {
  LocationPickerFromMapRoute({_i24.Key? key, _i25.LocationAddress? initial})
      : super(LocationPickerFromMapRoute.name,
            path: '/location-picker-map',
            args: LocationPickerFromMapRouteArgs(key: key, initial: initial));

  static const String name = 'LocationPickerFromMapRoute';
}

class LocationPickerFromMapRouteArgs {
  const LocationPickerFromMapRouteArgs({this.key, this.initial});

  final _i24.Key? key;

  final _i25.LocationAddress? initial;

  @override
  String toString() {
    return 'LocationPickerFromMapRouteArgs{key: $key, initial: $initial}';
  }
}

/// generated route for
/// [_i18.HomePage]
class HomeRouter extends _i19.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'home');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i19.EmptyRouterPage]
class HistoryRouter extends _i19.PageRouteInfo<void> {
  const HistoryRouter({List<_i19.PageRouteInfo>? children})
      : super(HistoryRouter.name, path: 'histories', initialChildren: children);

  static const String name = 'HistoryRouter';
}

/// generated route for
/// [_i19.EmptyRouterPage]
class InboxRouter extends _i19.PageRouteInfo<void> {
  const InboxRouter({List<_i19.PageRouteInfo>? children})
      : super(InboxRouter.name, path: 'inboxes', initialChildren: children);

  static const String name = 'InboxRouter';
}

/// generated route for
/// [_i19.EmptyRouterPage]
class AccountRouter extends _i19.PageRouteInfo<void> {
  const AccountRouter({List<_i19.PageRouteInfo>? children})
      : super(AccountRouter.name, path: 'account', initialChildren: children);

  static const String name = 'AccountRouter';
}

/// generated route for
/// [_i20.HistoryListPage]
class HistoryListRoute extends _i19.PageRouteInfo<void> {
  const HistoryListRoute() : super(HistoryListRoute.name, path: '');

  static const String name = 'HistoryListRoute';
}

/// generated route for
/// [_i21.HistoryDetailPage]
class HistoryDetailRoute extends _i19.PageRouteInfo<void> {
  const HistoryDetailRoute()
      : super(HistoryDetailRoute.name, path: ':historyId');

  static const String name = 'HistoryDetailRoute';
}

/// generated route for
/// [_i22.InboxListPage]
class InboxListRoute extends _i19.PageRouteInfo<void> {
  const InboxListRoute() : super(InboxListRoute.name, path: '');

  static const String name = 'InboxListRoute';
}

/// generated route for
/// [_i23.AccountPage]
class AccountRoute extends _i19.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: '');

  static const String name = 'AccountRoute';
}
