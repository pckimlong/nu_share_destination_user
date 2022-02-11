import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_sign_in_event.freezed.dart';

@freezed
class PhoneSignInEvent with _$PhoneSignInEvent {
  const factory PhoneSignInEvent.nextButtonPress() = NextButtonPress;
  const factory PhoneSignInEvent.smsCodeChanged(String? smsCode) =
      SmsCodeChanged;
  const factory PhoneSignInEvent.phoneNumberChanged(String? phoneNumber) =
      PhoneNumberChanged;
}
