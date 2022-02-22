import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nu_share_destination_user/src/domain/auth/auth_failure.dart';

import '../../../domain/auth/i_auth_facade.dart';
import '../../core/service_providers.dart';

part "phone_sign_in_provider.freezed.dart";

final signInWithGoogleController = StateNotifierProvider.autoDispose<
    PhoneSignInControllerNotifier, PhoneSignInState>(
  (ref) => PhoneSignInControllerNotifier(ref.watch(authFacadeProvider)),
);

@freezed
class PhoneSignInState with _$PhoneSignInState {
  PhoneSignInState._();

  factory PhoneSignInState({
    required String phoneNumber,
    required String smsCode,
    required Option<AuthFailure> falureOption,
    required Option<String> verificationIdOption,
    required bool isInProgress,
    required bool isLoading,
  }) = _PhoneSignInState;

  factory PhoneSignInState.initial() {
    return PhoneSignInState(
      phoneNumber: '',
      smsCode: '',
      falureOption: none(),
      verificationIdOption: none(),
      isInProgress: false,
      isLoading: false,
    );
  }

  bool get showNextButton => verificationIdOption.isNone() && !isInProgress;
  bool get showSmsCodeEntry => verificationIdOption.isSome();
}

@freezed
class PhoneSignInEvent with _$PhoneSignInEvent {
  const factory PhoneSignInEvent.nextButtonPress() = NextButtonPress;
  const factory PhoneSignInEvent.smsCodeChanged(String? smsCode) =
      SmsCodeChanged;
  const factory PhoneSignInEvent.phoneNumberChanged(String? phoneNumber) =
      PhoneNumberChanged;
}

class PhoneSignInControllerNotifier extends StateNotifier<PhoneSignInState> {
  PhoneSignInControllerNotifier(this._authFacade)
      : super(PhoneSignInState.initial());

  final Duration verificationCodeTimeout = const Duration(seconds: 30);

  final IAuthFacade _authFacade;
  final int _smcCodeMaxLength = 6;
  StreamSubscription<Either<AuthFailure, String>>? _streamSubscription;

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

  Future mapEventToState(PhoneSignInEvent events) async {
    events.map(
      nextButtonPress: (_) => _performSignIn(),
      smsCodeChanged: (value) async {
        state = state.copyWith(smsCode: value.smsCode ?? '');

        /// If user type enough char of sms code, perform code verify
        if (state.smsCode.length == _smcCodeMaxLength) {
          await _performVerifyCode();
        }
      },
      phoneNumberChanged: (value) {
        state = state.copyWith(phoneNumber: value.phoneNumber ?? '');
        if (state.verificationIdOption.isSome()) {
          state = PhoneSignInState.initial().copyWith(
            phoneNumber: state.phoneNumber,
          );
        }
      },
    );
  }

  void reset() => state = PhoneSignInState.initial();

  void _performSignIn() {
    state = state.copyWith(
      isInProgress: true,
      falureOption: none(),
      isLoading: true,
    );

    _streamSubscription = _authFacade
        .signInWithPhone(
            phoneNumber: state.phoneNumber, timeout: verificationCodeTimeout)
        .listen(
          (failureOrVerificationId) => failureOrVerificationId.fold(
            (failure) {
              state = state.copyWith(
                falureOption: some(failure),
                isInProgress: false,
                isLoading: false,
              );
            },
            (verificationId) {
              state = state.copyWith(
                verificationIdOption: some(verificationId),
                isInProgress: true,
                isLoading: false,
              );
            },
          ),
        );
  }

  Future<void> _performVerifyCode() async {
    state = state.copyWith(isLoading: true, isInProgress: true);

    await state.verificationIdOption.match(
      (verificationId) async {
        final result = await _authFacade.vertifySmcCode(
          smsCode: state.smsCode,
          verificationId: verificationId,
        );

        result.fold(
          (failure) => state = state.copyWith(
            falureOption: some(failure),
            isInProgress: false,
            isLoading: false,
          ),
          (_) => state = state.copyWith(
            isInProgress: false,
            isLoading: false,
          ),
        );
      },
      () => null,
    );
  }
}
