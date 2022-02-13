// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TripStateTearOff {
  const _$TripStateTearOff();

  _TripState call(
      {required TripEntity tripEntity,
      required Option<DriverEntity> driver,
      required String yourId}) {
    return _TripState(
      tripEntity: tripEntity,
      driver: driver,
      yourId: yourId,
    );
  }
}

/// @nodoc
const $TripState = _$TripStateTearOff();

/// @nodoc
mixin _$TripState {
  TripEntity get tripEntity => throw _privateConstructorUsedError;

  /// Get driver id from trip Entity and subscribe to driver stream
  Option<DriverEntity> get driver => throw _privateConstructorUsedError;

  /// Your uid, authenticated
  String get yourId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripStateCopyWith<TripState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripStateCopyWith<$Res> {
  factory $TripStateCopyWith(TripState value, $Res Function(TripState) then) =
      _$TripStateCopyWithImpl<$Res>;
  $Res call(
      {TripEntity tripEntity, Option<DriverEntity> driver, String yourId});

  $TripEntityCopyWith<$Res> get tripEntity;
}

/// @nodoc
class _$TripStateCopyWithImpl<$Res> implements $TripStateCopyWith<$Res> {
  _$TripStateCopyWithImpl(this._value, this._then);

  final TripState _value;
  // ignore: unused_field
  final $Res Function(TripState) _then;

  @override
  $Res call({
    Object? tripEntity = freezed,
    Object? driver = freezed,
    Object? yourId = freezed,
  }) {
    return _then(_value.copyWith(
      tripEntity: tripEntity == freezed
          ? _value.tripEntity
          : tripEntity // ignore: cast_nullable_to_non_nullable
              as TripEntity,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Option<DriverEntity>,
      yourId: yourId == freezed
          ? _value.yourId
          : yourId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $TripEntityCopyWith<$Res> get tripEntity {
    return $TripEntityCopyWith<$Res>(_value.tripEntity, (value) {
      return _then(_value.copyWith(tripEntity: value));
    });
  }
}

/// @nodoc
abstract class _$TripStateCopyWith<$Res> implements $TripStateCopyWith<$Res> {
  factory _$TripStateCopyWith(
          _TripState value, $Res Function(_TripState) then) =
      __$TripStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TripEntity tripEntity, Option<DriverEntity> driver, String yourId});

  @override
  $TripEntityCopyWith<$Res> get tripEntity;
}

/// @nodoc
class __$TripStateCopyWithImpl<$Res> extends _$TripStateCopyWithImpl<$Res>
    implements _$TripStateCopyWith<$Res> {
  __$TripStateCopyWithImpl(_TripState _value, $Res Function(_TripState) _then)
      : super(_value, (v) => _then(v as _TripState));

  @override
  _TripState get _value => super._value as _TripState;

  @override
  $Res call({
    Object? tripEntity = freezed,
    Object? driver = freezed,
    Object? yourId = freezed,
  }) {
    return _then(_TripState(
      tripEntity: tripEntity == freezed
          ? _value.tripEntity
          : tripEntity // ignore: cast_nullable_to_non_nullable
              as TripEntity,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Option<DriverEntity>,
      yourId: yourId == freezed
          ? _value.yourId
          : yourId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TripState extends _TripState {
  _$_TripState(
      {required this.tripEntity, required this.driver, required this.yourId})
      : super._();

  @override
  final TripEntity tripEntity;
  @override

  /// Get driver id from trip Entity and subscribe to driver stream
  final Option<DriverEntity> driver;
  @override

  /// Your uid, authenticated
  final String yourId;

  @override
  String toString() {
    return 'TripState(tripEntity: $tripEntity, driver: $driver, yourId: $yourId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TripState &&
            const DeepCollectionEquality()
                .equals(other.tripEntity, tripEntity) &&
            const DeepCollectionEquality().equals(other.driver, driver) &&
            const DeepCollectionEquality().equals(other.yourId, yourId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tripEntity),
      const DeepCollectionEquality().hash(driver),
      const DeepCollectionEquality().hash(yourId));

  @JsonKey(ignore: true)
  @override
  _$TripStateCopyWith<_TripState> get copyWith =>
      __$TripStateCopyWithImpl<_TripState>(this, _$identity);
}

abstract class _TripState extends TripState {
  factory _TripState(
      {required TripEntity tripEntity,
      required Option<DriverEntity> driver,
      required String yourId}) = _$_TripState;
  _TripState._() : super._();

  @override
  TripEntity get tripEntity;
  @override

  /// Get driver id from trip Entity and subscribe to driver stream
  Option<DriverEntity> get driver;
  @override

  /// Your uid, authenticated
  String get yourId;
  @override
  @JsonKey(ignore: true)
  _$TripStateCopyWith<_TripState> get copyWith =>
      throw _privateConstructorUsedError;
}
