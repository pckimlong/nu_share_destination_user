import 'dart:async';

import 'package:auth_buttons/auth_buttons.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../_core/app_utilz.dart';
import '../../_providers/user_provider.dart';
import '../../routes/router.gr.dart';

import '../../_core/app_styles.dart';
import '../../widgets/app_logo.dart';
import 'phone_sign_in_provider.dart';

part 'widget/countdown_time_widget.dart';
part 'widget/other_sign_in_provider_widget.dart';
part 'widget/mobile_login_widget.dart';
part 'confirm_phone_page.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// Listen to auth state to determine if user has logged or not.
    /// If user successfully logged in. It will navigate to root page.
    ref.listen<AuthState>(
      authControllerProvider,
      (previous, next) {
        next.whenOrNull(
          authenticated: (_) {
            context.router.replaceAll([const RootRoute()]);
          },
        );
      },
    );

    /// Listen to Phone Sign in state. to see if there're any failure or ...
    ref.listen<PhoneSignInState>(
      signInWithGoogleController,
      (previous, state) {
        /// Navigate to input verify code page
        if ((previous?.showSmsCodeEntry ?? false) == false &&
            state.showSmsCodeEntry) {
          Navigator.of(context).push(
            CupertinoPageRoute(builder: (_) => const _ConfirmPhonePage()),
          );
        }
        if (!(previous?.isLoading ?? false) && state.isLoading) {
          BotToast.showLoading();
        }
        if ((previous?.isLoading ?? false) && !state.isLoading) {
          BotToast.closeAllLoading();
        }

        /// Show error message when exception or failure accured
        if (previous!.falureOption != state.falureOption) {
          state.falureOption.match(
            (failure) {
              String errorText = "";

              failure.whenOrNull(
                serverError: () => "Server Error",
                invalidPhoneNumber: () => "Invalid Phone Number",
                toManyRequest: () => "Too Many Requests",
                sessionExpired: () => "Session Expired",
                unauthorized: () => "Unauthorized",
              );
              if (errorText.isNotEmpty) BotToast.showText(text: errorText);
            },
            () => null,
          );
        }
      },
    );

    return GestureDetector(
      onTap: () => AppUtilzs.closeKeyBoard(context),
      child: Scaffold(
        body: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: const [AppLogo(size: 80)]),
                    const SizedBox(height: 50),
                    const _MobileLogin(),
                    const SizedBox(height: 80),
                    Row(
                      children: const [
                        Expanded(child: Divider()),
                        Text(' OR ', style: AppStyles.labelStyle),
                        Expanded(child: Divider()),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Expanded(child: _OtherLoginProvider()),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Driver Login'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
