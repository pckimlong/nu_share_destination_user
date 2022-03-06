// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'driver_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DriverStateTearOff {
  const _$DriverStateTearOff();

  _DriverState call(
      {required Option<DriverEntity> driver,
      required Option<DriverFailure> failureOption,
      required Option<LocationFailure> locationFailureOption,
      required LocationDetail? realtime}) {
    return _DriverState(
      driver: driver,
      failureOption: failureOption,
      locationFailureOption: locationFailureOption,
      realtime: realtime,
    );
  }
}

/// @nodoc
const $DriverState = _$DriverStateTearOff();

/// @nodoc
mixin _$DriverState {
  Option<DriverEntity> get driver => throw _privateConstructorUsedError;
  Option<DriverFailure> get failureOption => throw _privateConstructorUsedError;
  Option<LocationFailure> get locationFailureOption =>
      throw _privateConstructorUsedError;
  LocationDetail? get realtime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriverStateCopyWith<DriverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverStateCopyWith<$Res> {
  factory $DriverStateCopyWith(
          DriverState value, $Res Function(DriverState) then) =
      _$DriverStateCopyWithImpl<$Res>;
  $Res call(
      {Option<DriverEntity> driver,
      Option<DriverFailure> failureOption,
      Option<LocationFailure> locationFailureOption,
      LocationDetail? realtime});
}

/// @nodoc
class _$DriverStateCopyWithImpl<$Res> implements $DriverStateCopyWith<$Res> {
  _$DriverStateCopyWithImpl(this._value, this._then);

  final DriverState _value;
  // ignore: unused_field
  final $Res Function(DriverState) _then;

  @override
  $Res call({
    Object? driver = freezed,
    Object? failureOption = freezed,
    Object? locationFailureOption = freezed,
    Object? realtime = freezed,
  }) {
    return _then(_value.copyWith(
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Option<DriverEntity>,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<DriverFailure>,
      locationFailureOption: locationFailureOption == freezed
          ? _value.locationFailureOption
          : locationFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      realtime: realtime == freezed
          ? _value.realtime
          : realtime // ignore: cast_nullable_to_non_nullable
              as LocationDetail?,
    ));
  }
}

/// @nodoc
abstract class _$DriverStateCopyWith<$Res>
    implements $DriverStateCopyWith<$Res> {
  factory _$DriverStateCopyWith(
          _DriverState value, $Res Function(_DriverState) then) =
      __$DriverStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<DriverEntity> driver,
      Option<DriverFailure> failureOption,
      Option<LocationFailure> locationFailureOption,
      LocationDetail? realtime});
}

/// @nodoc
class __$DriverStateCopyWithImpl<$Res> extends _$DriverStateCopyWithImpl<$Res>
    implements _$DriverStateCopyWith<$Res> {
  __$DriverStateCopyWithImpl(
      _DriverState _value, $Res Function(_DriverState) _then)
      : super(_value, (v) => _then(v as _DriverState));

  @override
  _DriverState get _value => super._value as _DriverState;

  @override
  $Res call({
    Object? driver = freezed,
    Object? failureOption = freezed,
    Object? locationFailureOption = freezed,
    Object? realtime = freezed,
  }) {
    return _then(_DriverState(
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Option<DriverEntity>,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<DriverFailure>,
      locationFailureOption: locationFailureOption == freezed
          ? _value.locationFailureOption
          : locationFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      realtime: realtime == freezed
          ? _value.realtime
          : realtime // ignore: cast_nullable_to_non_nullable
              as LocationDetail?,
    ));
  }
}

/// @nodoc

class _$_DriverState extends _DriverState {
  _$_DriverState(
      {required this.driver,
      required this.failureOption,
      required this.locationFailureOption,
      required this.realtime})
      : super._();

  @override
  final Option<DriverEntity> driver;
  @override
  final Option<DriverFailure> failureOption;
  @override
  final Option<LocationFailure> locationFailureOption;
  @override
  final LocationDetail? realtime;

  @override
  String toString() {
    return 'DriverState(driver: $driver, failureOption: $failureOption, locationFailureOption: $locationFailureOption, realtime: $realtime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DriverState &&
            const DeepCollectionEquality().equals(other.driver, driver) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality()
                .equals(other.locationFailureOption, locationFailureOption) &&
            const DeepCollectionEquality().equals(other.realtime, realtime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(driver),
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(locationFailureOption),
      const DeepCollectionEquality().hash(realtime));

  @JsonKey(ignore: true)
  @override
  _$DriverStateCopyWith<_DriverState> get copyWith =>
      __$DriverStateCopyWithImpl<_DriverState>(this, _$identity);
}

abstract class _DriverState extends DriverState {
  factory _DriverState(
      {required Option<DriverEntity> driver,
      required Option<DriverFailure> failureOption,
      required Option<LocationFailure> locationFailureOption,
      required LocationDetail? realtime}) = _$_DriverState;
  _DriverState._() : super._();

  @override
  Option<DriverEntity> get driver;
  @override
  Option<DriverFailure> get failureOption;
  @override
  Option<LocationFailure> get locationFailureOption;
  @override
  LocationDetail? get realtime;
  @override
  @JsonKey(ignore: true)
  _$DriverStateCopyWith<_DriverState> get copyWith =>
      throw _privateConstructorUsedError;
}
