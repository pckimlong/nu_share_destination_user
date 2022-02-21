import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/auth_failure.dart';

part 'phone_sign_in_state.freezed.dart';

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
