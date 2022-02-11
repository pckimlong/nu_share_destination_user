// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_sign_in_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhoneSignInEventTearOff {
  const _$PhoneSignInEventTearOff();

  NextButtonPress nextButtonPress() {
    return const NextButtonPress();
  }

  SmsCodeChanged smsCodeChanged(String? smsCode) {
    return SmsCodeChanged(
      smsCode,
    );
  }

  PhoneNumberChanged phoneNumberChanged(String? phoneNumber) {
    return PhoneNumberChanged(
      phoneNumber,
    );
  }
}

/// @nodoc
const $PhoneSignInEvent = _$PhoneSignInEventTearOff();

/// @nodoc
mixin _$PhoneSignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextButtonPress,
    required TResult Function(String? smsCode) smsCodeChanged,
    required TResult Function(String? phoneNumber) phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? nextButtonPress,
    TResult Function(String? smsCode)? smsCodeChanged,
    TResult Function(String? phoneNumber)? phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextButtonPress,
    TResult Function(String? smsCode)? smsCodeChanged,
    TResult Function(String? phoneNumber)? phoneNumberChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextButtonPress value) nextButtonPress,
    required TResult Function(SmsCodeChanged value) smsCodeChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NextButtonPress value)? nextButtonPress,
    TResult Function(SmsCodeChanged value)? smsCodeChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextButtonPress value)? nextButtonPress,
    TResult Function(SmsCodeChanged value)? smsCodeChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneSignInEventCopyWith<$Res> {
  factory $PhoneSignInEventCopyWith(
          PhoneSignInEvent value, $Res Function(PhoneSignInEvent) then) =
      _$PhoneSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneSignInEventCopyWithImpl<$Res>
    implements $PhoneSignInEventCopyWith<$Res> {
  _$PhoneSignInEventCopyWithImpl(this._value, this._then);

  final PhoneSignInEvent _value;
  // ignore: unused_field
  final $Res Function(PhoneSignInEvent) _then;
}

/// @nodoc
abstract class $NextButtonPressCopyWith<$Res> {
  factory $NextButtonPressCopyWith(
          NextButtonPress value, $Res Function(NextButtonPress) then) =
      _$NextButtonPressCopyWithImpl<$Res>;
}

/// @nodoc
class _$NextButtonPressCopyWithImpl<$Res>
    extends _$PhoneSignInEventCopyWithImpl<$Res>
    implements $NextButtonPressCopyWith<$Res> {
  _$NextButtonPressCopyWithImpl(
      NextButtonPress _value, $Res Function(NextButtonPress) _then)
      : super(_value, (v) => _then(v as NextButtonPress));

  @override
  NextButtonPress get _value => super._value as NextButtonPress;
}

/// @nodoc

class _$NextButtonPress implements NextButtonPress {
  const _$NextButtonPress();

  @override
  String toString() {
    return 'PhoneSignInEvent.nextButtonPress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NextButtonPress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextButtonPress,
    required TResult Function(String? smsCode) smsCodeChanged,
    required TResult Function(String? phoneNumber) phoneNumberChanged,
  }) {
    return nextButtonPress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? nextButtonPress,
    TResult Function(String? smsCode)? smsCodeChanged,
    TResult Function(String? phoneNumber)? phoneNumberChanged,
  }) {
    return nextButtonPress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextButtonPress,
    TResult Function(String? smsCode)? smsCodeChanged,
    TResult Function(String? phoneNumber)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (nextButtonPress != null) {
      return nextButtonPress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextButtonPress value) nextButtonPress,
    required TResult Function(SmsCodeChanged value) smsCodeChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
  }) {
    return nextButtonPress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NextButtonPress value)? nextButtonPress,
    TResult Function(SmsCodeChanged value)? smsCodeChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
  }) {
    return nextButtonPress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextButtonPress value)? nextButtonPress,
    TResult Function(SmsCodeChanged value)? smsCodeChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (nextButtonPress != null) {
      return nextButtonPress(this);
    }
    return orElse();
  }
}

abstract class NextButtonPress implements PhoneSignInEvent {
  const factory NextButtonPress() = _$NextButtonPress;
}

/// @nodoc
abstract class $SmsCodeChangedCopyWith<$Res> {
  factory $SmsCodeChangedCopyWith(
          SmsCodeChanged value, $Res Function(SmsCodeChanged) then) =
      _$SmsCodeChangedCopyWithImpl<$Res>;
  $Res call({String? smsCode});
}

/// @nodoc
class _$SmsCodeChangedCopyWithImpl<$Res>
    extends _$PhoneSignInEventCopyWithImpl<$Res>
    implements $SmsCodeChangedCopyWith<$Res> {
  _$SmsCodeChangedCopyWithImpl(
      SmsCodeChanged _value, $Res Function(SmsCodeChanged) _then)
      : super(_value, (v) => _then(v as SmsCodeChanged));

  @override
  SmsCodeChanged get _value => super._value as SmsCodeChanged;

  @override
  $Res call({
    Object? smsCode = freezed,
  }) {
    return _then(SmsCodeChanged(
      smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SmsCodeChanged implements SmsCodeChanged {
  const _$SmsCodeChanged(this.smsCode);

  @override
  final String? smsCode;

  @override
  String toString() {
    return 'PhoneSignInEvent.smsCodeChanged(smsCode: $smsCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SmsCodeChanged &&
            const DeepCollectionEquality().equals(other.smsCode, smsCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(smsCode));

  @JsonKey(ignore: true)
  @override
  $SmsCodeChangedCopyWith<SmsCodeChanged> get copyWith =>
      _$SmsCodeChangedCopyWithImpl<SmsCodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextButtonPress,
    required TResult Function(String? smsCode) smsCodeChanged,
    required TResult Function(String? phoneNumber) phoneNumberChanged,
  }) {
    return smsCodeChanged(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? nextButtonPress,
    TResult Function(String? smsCode)? smsCodeChanged,
    TResult Function(String? phoneNumber)? phoneNumberChanged,
  }) {
    return smsCodeChanged?.call(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextButtonPress,
    TResult Function(String? smsCode)? smsCodeChanged,
    TResult Function(String? phoneNumber)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (smsCodeChanged != null) {
      return smsCodeChanged(smsCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextButtonPress value) nextButtonPress,
    required TResult Function(SmsCodeChanged value) smsCodeChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
  }) {
    return smsCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NextButtonPress value)? nextButtonPress,
    TResult Function(SmsCodeChanged value)? smsCodeChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
  }) {
    return smsCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextButtonPress value)? nextButtonPress,
    TResult Function(SmsCodeChanged value)? smsCodeChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (smsCodeChanged != null) {
      return smsCodeChanged(this);
    }
    return orElse();
  }
}

abstract class SmsCodeChanged implements PhoneSignInEvent {
  const factory SmsCodeChanged(String? smsCode) = _$SmsCodeChanged;

  String? get smsCode;
  @JsonKey(ignore: true)
  $SmsCodeChangedCopyWith<SmsCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String? phoneNumber});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$PhoneSignInEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phoneNumber);

  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'PhoneSignInEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhoneNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextButtonPress,
    required TResult Function(String? smsCode) smsCodeChanged,
    required TResult Function(String? phoneNumber) phoneNumberChanged,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? nextButtonPress,
    TResult Function(String? smsCode)? smsCodeChanged,
    TResult Function(String? phoneNumber)? phoneNumberChanged,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextButtonPress,
    TResult Function(String? smsCode)? smsCodeChanged,
    TResult Function(String? phoneNumber)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextButtonPress value) nextButtonPress,
    required TResult Function(SmsCodeChanged value) smsCodeChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NextButtonPress value)? nextButtonPress,
    TResult Function(SmsCodeChanged value)? smsCodeChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextButtonPress value)? nextButtonPress,
    TResult Function(SmsCodeChanged value)? smsCodeChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements PhoneSignInEvent {
  const factory PhoneNumberChanged(String? phoneNumber) = _$PhoneNumberChanged;

  String? get phoneNumber;
  @JsonKey(ignore: true)
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
