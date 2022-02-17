// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'driver_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DriverFailureTearOff {
  const _$DriverFailureTearOff();

  _ServerError serverError(String? mgs) {
    return _ServerError(
      mgs,
    );
  }

  _BannedActionWhileInProgress bannedActionWhileInProgress(String tripId) {
    return _BannedActionWhileInProgress(
      tripId,
    );
  }

  _NotExisted notExisted() {
    return _NotExisted();
  }
}

/// @nodoc
const $DriverFailure = _$DriverFailureTearOff();

/// @nodoc
mixin _$DriverFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mgs) serverError,
    required TResult Function(String tripId) bannedActionWhileInProgress,
    required TResult Function() notExisted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? mgs)? serverError,
    TResult Function(String tripId)? bannedActionWhileInProgress,
    TResult Function()? notExisted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mgs)? serverError,
    TResult Function(String tripId)? bannedActionWhileInProgress,
    TResult Function()? notExisted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_BannedActionWhileInProgress value)
        bannedActionWhileInProgress,
    required TResult Function(_NotExisted value) notExisted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BannedActionWhileInProgress value)?
        bannedActionWhileInProgress,
    TResult Function(_NotExisted value)? notExisted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BannedActionWhileInProgress value)?
        bannedActionWhileInProgress,
    TResult Function(_NotExisted value)? notExisted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverFailureCopyWith<$Res> {
  factory $DriverFailureCopyWith(
          DriverFailure value, $Res Function(DriverFailure) then) =
      _$DriverFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$DriverFailureCopyWithImpl<$Res>
    implements $DriverFailureCopyWith<$Res> {
  _$DriverFailureCopyWithImpl(this._value, this._then);

  final DriverFailure _value;
  // ignore: unused_field
  final $Res Function(DriverFailure) _then;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  $Res call({String? mgs});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$DriverFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;

  @override
  $Res call({
    Object? mgs = freezed,
  }) {
    return _then(_ServerError(
      mgs == freezed
          ? _value.mgs
          : mgs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  _$_ServerError(this.mgs);

  @override
  final String? mgs;

  @override
  String toString() {
    return 'DriverFailure.serverError(mgs: $mgs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerError &&
            const DeepCollectionEquality().equals(other.mgs, mgs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mgs));

  @JsonKey(ignore: true)
  @override
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mgs) serverError,
    required TResult Function(String tripId) bannedActionWhileInProgress,
    required TResult Function() notExisted,
  }) {
    return serverError(mgs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? mgs)? serverError,
    TResult Function(String tripId)? bannedActionWhileInProgress,
    TResult Function()? notExisted,
  }) {
    return serverError?.call(mgs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mgs)? serverError,
    TResult Function(String tripId)? bannedActionWhileInProgress,
    TResult Function()? notExisted,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(mgs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_BannedActionWhileInProgress value)
        bannedActionWhileInProgress,
    required TResult Function(_NotExisted value) notExisted,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BannedActionWhileInProgress value)?
        bannedActionWhileInProgress,
    TResult Function(_NotExisted value)? notExisted,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BannedActionWhileInProgress value)?
        bannedActionWhileInProgress,
    TResult Function(_NotExisted value)? notExisted,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements DriverFailure {
  factory _ServerError(String? mgs) = _$_ServerError;

  String? get mgs;
  @JsonKey(ignore: true)
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BannedActionWhileInProgressCopyWith<$Res> {
  factory _$BannedActionWhileInProgressCopyWith(
          _BannedActionWhileInProgress value,
          $Res Function(_BannedActionWhileInProgress) then) =
      __$BannedActionWhileInProgressCopyWithImpl<$Res>;
  $Res call({String tripId});
}

/// @nodoc
class __$BannedActionWhileInProgressCopyWithImpl<$Res>
    extends _$DriverFailureCopyWithImpl<$Res>
    implements _$BannedActionWhileInProgressCopyWith<$Res> {
  __$BannedActionWhileInProgressCopyWithImpl(
      _BannedActionWhileInProgress _value,
      $Res Function(_BannedActionWhileInProgress) _then)
      : super(_value, (v) => _then(v as _BannedActionWhileInProgress));

  @override
  _BannedActionWhileInProgress get _value =>
      super._value as _BannedActionWhileInProgress;

  @override
  $Res call({
    Object? tripId = freezed,
  }) {
    return _then(_BannedActionWhileInProgress(
      tripId == freezed
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BannedActionWhileInProgress implements _BannedActionWhileInProgress {
  _$_BannedActionWhileInProgress(this.tripId);

  @override
  final String tripId;

  @override
  String toString() {
    return 'DriverFailure.bannedActionWhileInProgress(tripId: $tripId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BannedActionWhileInProgress &&
            const DeepCollectionEquality().equals(other.tripId, tripId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tripId));

  @JsonKey(ignore: true)
  @override
  _$BannedActionWhileInProgressCopyWith<_BannedActionWhileInProgress>
      get copyWith => __$BannedActionWhileInProgressCopyWithImpl<
          _BannedActionWhileInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mgs) serverError,
    required TResult Function(String tripId) bannedActionWhileInProgress,
    required TResult Function() notExisted,
  }) {
    return bannedActionWhileInProgress(tripId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? mgs)? serverError,
    TResult Function(String tripId)? bannedActionWhileInProgress,
    TResult Function()? notExisted,
  }) {
    return bannedActionWhileInProgress?.call(tripId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mgs)? serverError,
    TResult Function(String tripId)? bannedActionWhileInProgress,
    TResult Function()? notExisted,
    required TResult orElse(),
  }) {
    if (bannedActionWhileInProgress != null) {
      return bannedActionWhileInProgress(tripId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_BannedActionWhileInProgress value)
        bannedActionWhileInProgress,
    required TResult Function(_NotExisted value) notExisted,
  }) {
    return bannedActionWhileInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BannedActionWhileInProgress value)?
        bannedActionWhileInProgress,
    TResult Function(_NotExisted value)? notExisted,
  }) {
    return bannedActionWhileInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BannedActionWhileInProgress value)?
        bannedActionWhileInProgress,
    TResult Function(_NotExisted value)? notExisted,
    required TResult orElse(),
  }) {
    if (bannedActionWhileInProgress != null) {
      return bannedActionWhileInProgress(this);
    }
    return orElse();
  }
}

abstract class _BannedActionWhileInProgress implements DriverFailure {
  factory _BannedActionWhileInProgress(String tripId) =
      _$_BannedActionWhileInProgress;

  String get tripId;
  @JsonKey(ignore: true)
  _$BannedActionWhileInProgressCopyWith<_BannedActionWhileInProgress>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotExistedCopyWith<$Res> {
  factory _$NotExistedCopyWith(
          _NotExisted value, $Res Function(_NotExisted) then) =
      __$NotExistedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotExistedCopyWithImpl<$Res> extends _$DriverFailureCopyWithImpl<$Res>
    implements _$NotExistedCopyWith<$Res> {
  __$NotExistedCopyWithImpl(
      _NotExisted _value, $Res Function(_NotExisted) _then)
      : super(_value, (v) => _then(v as _NotExisted));

  @override
  _NotExisted get _value => super._value as _NotExisted;
}

/// @nodoc

class _$_NotExisted implements _NotExisted {
  _$_NotExisted();

  @override
  String toString() {
    return 'DriverFailure.notExisted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotExisted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? mgs) serverError,
    required TResult Function(String tripId) bannedActionWhileInProgress,
    required TResult Function() notExisted,
  }) {
    return notExisted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? mgs)? serverError,
    TResult Function(String tripId)? bannedActionWhileInProgress,
    TResult Function()? notExisted,
  }) {
    return notExisted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? mgs)? serverError,
    TResult Function(String tripId)? bannedActionWhileInProgress,
    TResult Function()? notExisted,
    required TResult orElse(),
  }) {
    if (notExisted != null) {
      return notExisted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_BannedActionWhileInProgress value)
        bannedActionWhileInProgress,
    required TResult Function(_NotExisted value) notExisted,
  }) {
    return notExisted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BannedActionWhileInProgress value)?
        bannedActionWhileInProgress,
    TResult Function(_NotExisted value)? notExisted,
  }) {
    return notExisted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_BannedActionWhileInProgress value)?
        bannedActionWhileInProgress,
    TResult Function(_NotExisted value)? notExisted,
    required TResult orElse(),
  }) {
    if (notExisted != null) {
      return notExisted(this);
    }
    return orElse();
  }
}

abstract class _NotExisted implements DriverFailure {
  factory _NotExisted() = _$_NotExisted;
}
