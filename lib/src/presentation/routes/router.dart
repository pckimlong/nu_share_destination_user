import 'package:auto_route/auto_route.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/core/entities/location_address.dart';
import '../modules/account/account_page.dart';
import '../modules/account/edit/edit_profile_page.dart';
import '../modules/account/register/user_register_page.dart';
import '../modules/auth/sign_in_page.dart';
import '../modules/common/location_picker_map_page.dart';
import '../modules/common/location_picker_page.dart';
import '../modules/common/text_input_page.dart';
import '../modules/contact_us/contact_us_page.dart';
import '../modules/history/detail/history_detail_page.dart';
import '../modules/history/list/history_list_page.dart';
import '../modules/home/home_page.dart';
import '../modules/inbox/list/inbox_list_page.dart';
import '../modules/message/list/message_list_page.dart';
import '../modules/payment/list/payment_list_page.dart';
import '../modules/payment/picker/payment_picker_page.dart';
import '../modules/root/root_page.dart';
import '../modules/saved_place/list/saved_places_list_page.dart';
import '../modules/saved_place/picker/saved_places_picker_page.dart';
import '../modules/setting/setting_page.dart';
import '../modules/splash/splash_page.dart';
import '../modules/trip/trip_page.dart';
import '../modules/voucher/list/voucher_list_page.dart';
import '../modules/voucher/picker/voucher_picker_page.dart';

@CupertinoAutoRouter(
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
    AutoRoute(
      path: '/register',
      page: UserRegisterPage,
    ),
    AutoRoute(
      path: '/edit-profile',
      page: EditProfilePage,
    ),
    AutoRoute(
      path: '/trip',
      page: TripPage,
    ),

    //! Voucher-------------------------
    AutoRoute(
      path: '/vouchers-list',
      page: VoucherListPage,
    ),
    AutoRoute(
      path: '/voucher-picker',
      page: VoucherPickerPage,
    ),

    //! Setting ----------------------
    AutoRoute(
      path: '/setting',
      page: SettingPage,
    ),

    //! Payment ------------------------
    AutoRoute(
      path: '/payments-list',
      page: PaymentListPage,
    ),
    AutoRoute(
      path: '/payment-picker',
      page: PaymentPickerPage,
    ),

    //! Saved places--------------------
    AutoRoute(
      path: '/saved-places-list',
      page: SavedPlaceListPage,
    ),
    AutoRoute(
      path: '/saved-place-picker',
      page: SavedPlacePickerPage,
    ),

    //! Contact us --------------------------
    AutoRoute(
      path: '/contact-us',
      page: ContactUsPage,
    ),

    //! Messages ---------------------------
    AutoRoute(
      path: '/messages',
      page: MessageListPage,
    ),

    //! Root-----------------------------
    CustomRoute(
      path: '/root',
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
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

    //! Utilz page------------------------------------
    CupertinoRoute<String?>(
      path: '/text-input',
      page: TextInputPage,
      fullscreenDialog: true,
    ),
    CupertinoRoute<Option<LocationAddress>?>(
      path: '/location-detail-picker',
      page: LocationPickerPage,
      fullscreenDialog: true,
    ),
    CupertinoRoute<LocationAddress?>(
      path: '/location-picker-map',
      page: LocationPickerFromMapPage,
    ),
  ],
)
class $AppRouter {}
