import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = _ServerError;
  const factory AuthFailure.invalidPhoneNumber() = _InvalidPhoneNumber;
  const factory AuthFailure.invalidEmailOrPassword() = _InvalidEmailOrPassword;
  const factory AuthFailure.toManyRequest() = _ToManyRequest;
  const factory AuthFailure.smsTimeout() = _SmsTimeout;
  const factory AuthFailure.sessionExpired() = _SessionExpired;
  const factory AuthFailure.unauthorized() = _Unauthorized;
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;
  const factory AuthFailure.invalidVerificationCode() =
      _InvalidVertificationCode;
}
