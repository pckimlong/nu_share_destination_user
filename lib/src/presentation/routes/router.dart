import 'package:auto_route/auto_route.dart';
import 'package:nu_share_destination_user/src/presentation/module/account/account_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/account/edit/edit_profile_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/account/register/user_register_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/auth/sign_in_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/contact_us/contact_us_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/history/detail/history_detail_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/history/list/history_list_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/home/home_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/inbox/list/inbox_list_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/message/list/message_list_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/payment/list/payment_list_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/payment/picker/payment_picker_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/root/root_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/saved_place/list/saved_places_list_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/saved_place/picker/saved_places_picker_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/setting/setting_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/splash/splash_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/trip/booking/trip_booking_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/voucher/list/voucher_list_page.dart';
import 'package:nu_share_destination_user/src/presentation/module/voucher/picker/voucher_picker_page.dart';

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
      path: '/booking',
      page: TripBookingPage,
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
  ],
)
class $AppRouter {}
