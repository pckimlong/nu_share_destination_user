// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_sign_in_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhoneSignInStateTearOff {
  const _$PhoneSignInStateTearOff();

  _PhoneSignInState call(
      {required String phoneNumber,
      required String smsCode,
      required Option<AuthFailure> falureOption,
      required Option<String> verificationIdOption,
      required bool isInProgress,
      required bool isLoading}) {
    return _PhoneSignInState(
      phoneNumber: phoneNumber,
      smsCode: smsCode,
      falureOption: falureOption,
      verificationIdOption: verificationIdOption,
      isInProgress: isInProgress,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $PhoneSignInState = _$PhoneSignInStateTearOff();

/// @nodoc
mixin _$PhoneSignInState {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  Option<AuthFailure> get falureOption => throw _privateConstructorUsedError;
  Option<String> get verificationIdOption => throw _privateConstructorUsedError;
  bool get isInProgress => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneSignInStateCopyWith<PhoneSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneSignInStateCopyWith<$Res> {
  factory $PhoneSignInStateCopyWith(
          PhoneSignInState value, $Res Function(PhoneSignInState) then) =
      _$PhoneSignInStateCopyWithImpl<$Res>;
  $Res call(
      {String phoneNumber,
      String smsCode,
      Option<AuthFailure> falureOption,
      Option<String> verificationIdOption,
      bool isInProgress,
      bool isLoading});
}

/// @nodoc
class _$PhoneSignInStateCopyWithImpl<$Res>
    implements $PhoneSignInStateCopyWith<$Res> {
  _$PhoneSignInStateCopyWithImpl(this._value, this._then);

  final PhoneSignInState _value;
  // ignore: unused_field
  final $Res Function(PhoneSignInState) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? smsCode = freezed,
    Object? falureOption = freezed,
    Object? verificationIdOption = freezed,
    Object? isInProgress = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      falureOption: falureOption == freezed
          ? _value.falureOption
          : falureOption // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
      verificationIdOption: verificationIdOption == freezed
          ? _value.verificationIdOption
          : verificationIdOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isInProgress: isInProgress == freezed
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PhoneSignInStateCopyWith<$Res>
    implements $PhoneSignInStateCopyWith<$Res> {
  factory _$PhoneSignInStateCopyWith(
          _PhoneSignInState value, $Res Function(_PhoneSignInState) then) =
      __$PhoneSignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String phoneNumber,
      String smsCode,
      Option<AuthFailure> falureOption,
      Option<String> verificationIdOption,
      bool isInProgress,
      bool isLoading});
}

/// @nodoc
class __$PhoneSignInStateCopyWithImpl<$Res>
    extends _$PhoneSignInStateCopyWithImpl<$Res>
    implements _$PhoneSignInStateCopyWith<$Res> {
  __$PhoneSignInStateCopyWithImpl(
      _PhoneSignInState _value, $Res Function(_PhoneSignInState) _then)
      : super(_value, (v) => _then(v as _PhoneSignInState));

  @override
  _PhoneSignInState get _value => super._value as _PhoneSignInState;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? smsCode = freezed,
    Object? falureOption = freezed,
    Object? verificationIdOption = freezed,
    Object? isInProgress = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_PhoneSignInState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      falureOption: falureOption == freezed
          ? _value.falureOption
          : falureOption // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
      verificationIdOption: verificationIdOption == freezed
          ? _value.verificationIdOption
          : verificationIdOption // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isInProgress: isInProgress == freezed
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PhoneSignInState extends _PhoneSignInState {
  _$_PhoneSignInState(
      {required this.phoneNumber,
      required this.smsCode,
      required this.falureOption,
      required this.verificationIdOption,
      required this.isInProgress,
      required this.isLoading})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String smsCode;
  @override
  final Option<AuthFailure> falureOption;
  @override
  final Option<String> verificationIdOption;
  @override
  final bool isInProgress;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'PhoneSignInState(phoneNumber: $phoneNumber, smsCode: $smsCode, falureOption: $falureOption, verificationIdOption: $verificationIdOption, isInProgress: $isInProgress, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhoneSignInState &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.smsCode, smsCode) &&
            const DeepCollectionEquality()
                .equals(other.falureOption, falureOption) &&
            const DeepCollectionEquality()
                .equals(other.verificationIdOption, verificationIdOption) &&
            const DeepCollectionEquality()
                .equals(other.isInProgress, isInProgress) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(smsCode),
      const DeepCollectionEquality().hash(falureOption),
      const DeepCollectionEquality().hash(verificationIdOption),
      const DeepCollectionEquality().hash(isInProgress),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$PhoneSignInStateCopyWith<_PhoneSignInState> get copyWith =>
      __$PhoneSignInStateCopyWithImpl<_PhoneSignInState>(this, _$identity);
}

abstract class _PhoneSignInState extends PhoneSignInState {
  factory _PhoneSignInState(
      {required String phoneNumber,
      required String smsCode,
      required Option<AuthFailure> falureOption,
      required Option<String> verificationIdOption,
      required bool isInProgress,
      required bool isLoading}) = _$_PhoneSignInState;
  _PhoneSignInState._() : super._();

  @override
  String get phoneNumber;
  @override
  String get smsCode;
  @override
  Option<AuthFailure> get falureOption;
  @override
  Option<String> get verificationIdOption;
  @override
  bool get isInProgress;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$PhoneSignInStateCopyWith<_PhoneSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

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
