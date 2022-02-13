// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TripEventTearOff {
  const _$TripEventTearOff();

  _CreateRequest bookTrip({required PassengerEntity passengerEntity}) {
    return _CreateRequest(
      passengerEntity: passengerEntity,
    );
  }

  _ToggleShareMode toggleShareMode() {
    return const _ToggleShareMode();
  }

  _CancelTrip cancelTrip() {
    return const _CancelTrip();
  }

  _ChangeOriginPosition changeOriginPosition(Coordinate coordinate) {
    return _ChangeOriginPosition(
      coordinate,
    );
  }
}

/// @nodoc
const $TripEvent = _$TripEventTearOff();

/// @nodoc
mixin _$TripEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PassengerEntity passengerEntity) bookTrip,
    required TResult Function() toggleShareMode,
    required TResult Function() cancelTrip,
    required TResult Function(Coordinate coordinate) changeOriginPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PassengerEntity passengerEntity)? bookTrip,
    TResult Function()? toggleShareMode,
    TResult Function()? cancelTrip,
    TResult Function(Coordinate coordinate)? changeOriginPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PassengerEntity passengerEntity)? bookTrip,
    TResult Function()? toggleShareMode,
    TResult Function()? cancelTrip,
    TResult Function(Coordinate coordinate)? changeOriginPosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRequest value) bookTrip,
    required TResult Function(_ToggleShareMode value) toggleShareMode,
    required TResult Function(_CancelTrip value) cancelTrip,
    required TResult Function(_ChangeOriginPosition value) changeOriginPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateRequest value)? bookTrip,
    TResult Function(_ToggleShareMode value)? toggleShareMode,
    TResult Function(_CancelTrip value)? cancelTrip,
    TResult Function(_ChangeOriginPosition value)? changeOriginPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRequest value)? bookTrip,
    TResult Function(_ToggleShareMode value)? toggleShareMode,
    TResult Function(_CancelTrip value)? cancelTrip,
    TResult Function(_ChangeOriginPosition value)? changeOriginPosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripEventCopyWith<$Res> {
  factory $TripEventCopyWith(TripEvent value, $Res Function(TripEvent) then) =
      _$TripEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TripEventCopyWithImpl<$Res> implements $TripEventCopyWith<$Res> {
  _$TripEventCopyWithImpl(this._value, this._then);

  final TripEvent _value;
  // ignore: unused_field
  final $Res Function(TripEvent) _then;
}

/// @nodoc
abstract class _$CreateRequestCopyWith<$Res> {
  factory _$CreateRequestCopyWith(
          _CreateRequest value, $Res Function(_CreateRequest) then) =
      __$CreateRequestCopyWithImpl<$Res>;
  $Res call({PassengerEntity passengerEntity});

  $PassengerEntityCopyWith<$Res> get passengerEntity;
}

/// @nodoc
class __$CreateRequestCopyWithImpl<$Res> extends _$TripEventCopyWithImpl<$Res>
    implements _$CreateRequestCopyWith<$Res> {
  __$CreateRequestCopyWithImpl(
      _CreateRequest _value, $Res Function(_CreateRequest) _then)
      : super(_value, (v) => _then(v as _CreateRequest));

  @override
  _CreateRequest get _value => super._value as _CreateRequest;

  @override
  $Res call({
    Object? passengerEntity = freezed,
  }) {
    return _then(_CreateRequest(
      passengerEntity: passengerEntity == freezed
          ? _value.passengerEntity
          : passengerEntity // ignore: cast_nullable_to_non_nullable
              as PassengerEntity,
    ));
  }

  @override
  $PassengerEntityCopyWith<$Res> get passengerEntity {
    return $PassengerEntityCopyWith<$Res>(_value.passengerEntity, (value) {
      return _then(_value.copyWith(passengerEntity: value));
    });
  }
}

/// @nodoc

class _$_CreateRequest implements _CreateRequest {
  const _$_CreateRequest({required this.passengerEntity});

  @override
  final PassengerEntity passengerEntity;

  @override
  String toString() {
    return 'TripEvent.bookTrip(passengerEntity: $passengerEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateRequest &&
            const DeepCollectionEquality()
                .equals(other.passengerEntity, passengerEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passengerEntity));

  @JsonKey(ignore: true)
  @override
  _$CreateRequestCopyWith<_CreateRequest> get copyWith =>
      __$CreateRequestCopyWithImpl<_CreateRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PassengerEntity passengerEntity) bookTrip,
    required TResult Function() toggleShareMode,
    required TResult Function() cancelTrip,
    required TResult Function(Coordinate coordinate) changeOriginPosition,
  }) {
    return bookTrip(passengerEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PassengerEntity passengerEntity)? bookTrip,
    TResult Function()? toggleShareMode,
    TResult Function()? cancelTrip,
    TResult Function(Coordinate coordinate)? changeOriginPosition,
  }) {
    return bookTrip?.call(passengerEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PassengerEntity passengerEntity)? bookTrip,
    TResult Function()? toggleShareMode,
    TResult Function()? cancelTrip,
    TResult Function(Coordinate coordinate)? changeOriginPosition,
    required TResult orElse(),
  }) {
    if (bookTrip != null) {
      return bookTrip(passengerEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRequest value) bookTrip,
    required TResult Function(_ToggleShareMode value) toggleShareMode,
    required TResult Function(_CancelTrip value) cancelTrip,
    required TResult Function(_ChangeOriginPosition value) changeOriginPosition,
  }) {
    return bookTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateRequest value)? bookTrip,
    TResult Function(_ToggleShareMode value)? toggleShareMode,
    TResult Function(_CancelTrip value)? cancelTrip,
    TResult Function(_ChangeOriginPosition value)? changeOriginPosition,
  }) {
    return bookTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRequest value)? bookTrip,
    TResult Function(_ToggleShareMode value)? toggleShareMode,
    TResult Function(_CancelTrip value)? cancelTrip,
    TResult Function(_ChangeOriginPosition value)? changeOriginPosition,
    required TResult orElse(),
  }) {
    if (bookTrip != null) {
      return bookTrip(this);
    }
    return orElse();
  }
}

abstract class _CreateRequest implements TripEvent {
  const factory _CreateRequest({required PassengerEntity passengerEntity}) =
      _$_CreateRequest;

  PassengerEntity get passengerEntity;
  @JsonKey(ignore: true)
  _$CreateRequestCopyWith<_CreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ToggleShareModeCopyWith<$Res> {
  factory _$ToggleShareModeCopyWith(
          _ToggleShareMode value, $Res Function(_ToggleShareMode) then) =
      __$ToggleShareModeCopyWithImpl<$Res>;
}

/// @nodoc
class __$ToggleShareModeCopyWithImpl<$Res> extends _$TripEventCopyWithImpl<$Res>
    implements _$ToggleShareModeCopyWith<$Res> {
  __$ToggleShareModeCopyWithImpl(
      _ToggleShareMode _value, $Res Function(_ToggleShareMode) _then)
      : super(_value, (v) => _then(v as _ToggleShareMode));

  @override
  _ToggleShareMode get _value => super._value as _ToggleShareMode;
}

/// @nodoc

class _$_ToggleShareMode implements _ToggleShareMode {
  const _$_ToggleShareMode();

  @override
  String toString() {
    return 'TripEvent.toggleShareMode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ToggleShareMode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PassengerEntity passengerEntity) bookTrip,
    required TResult Function() toggleShareMode,
    required TResult Function() cancelTrip,
    required TResult Function(Coordinate coordinate) changeOriginPosition,
  }) {
    return toggleShareMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PassengerEntity passengerEntity)? bookTrip,
    TResult Function()? toggleShareMode,
    TResult Function()? cancelTrip,
    TResult Function(Coordinate coordinate)? changeOriginPosition,
  }) {
    return toggleShareMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PassengerEntity passengerEntity)? bookTrip,
    TResult Function()? toggleShareMode,
    TResult Function()? cancelTrip,
    TResult Function(Coordinate coordinate)? changeOriginPosition,
    required TResult orElse(),
  }) {
    if (toggleShareMode != null) {
      return toggleShareMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRequest value) bookTrip,
    required TResult Function(_ToggleShareMode value) toggleShareMode,
    required TResult Function(_CancelTrip value) cancelTrip,
    required TResult Function(_ChangeOriginPosition value) changeOriginPosition,
  }) {
    return toggleShareMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateRequest value)? bookTrip,
    TResult Function(_ToggleShareMode value)? toggleShareMode,
    TResult Function(_CancelTrip value)? cancelTrip,
    TResult Function(_ChangeOriginPosition value)? changeOriginPosition,
  }) {
    return toggleShareMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRequest value)? bookTrip,
    TResult Function(_ToggleShareMode value)? toggleShareMode,
    TResult Function(_CancelTrip value)? cancelTrip,
    TResult Function(_ChangeOriginPosition value)? changeOriginPosition,
    required TResult orElse(),
  }) {
    if (toggleShareMode != null) {
      return toggleShareMode(this);
    }
    return orElse();
  }
}

abstract class _ToggleShareMode implements TripEvent {
  const factory _ToggleShareMode() = _$_ToggleShareMode;
}

/// @nodoc
abstract class _$CancelTripCopyWith<$Res> {
  factory _$CancelTripCopyWith(
          _CancelTrip value, $Res Function(_CancelTrip) then) =
      __$CancelTripCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelTripCopyWithImpl<$Res> extends _$TripEventCopyWithImpl<$Res>
    implements _$CancelTripCopyWith<$Res> {
  __$CancelTripCopyWithImpl(
      _CancelTrip _value, $Res Function(_CancelTrip) _then)
      : super(_value, (v) => _then(v as _CancelTrip));

  @override
  _CancelTrip get _value => super._value as _CancelTrip;
}

/// @nodoc

class _$_CancelTrip implements _CancelTrip {
  const _$_CancelTrip();

  @override
  String toString() {
    return 'TripEvent.cancelTrip()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CancelTrip);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PassengerEntity passengerEntity) bookTrip,
    required TResult Function() toggleShareMode,
    required TResult Function() cancelTrip,
    required TResult Function(Coordinate coordinate) changeOriginPosition,
  }) {
    return cancelTrip();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PassengerEntity passengerEntity)? bookTrip,
    TResult Function()? toggleShareMode,
    TResult Function()? cancelTrip,
    TResult Function(Coordinate coordinate)? changeOriginPosition,
  }) {
    return cancelTrip?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PassengerEntity passengerEntity)? bookTrip,
    TResult Function()? toggleShareMode,
    TResult Function()? cancelTrip,
    TResult Function(Coordinate coordinate)? changeOriginPosition,
    required TResult orElse(),
  }) {
    if (cancelTrip != null) {
      return cancelTrip();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRequest value) bookTrip,
    required TResult Function(_ToggleShareMode value) toggleShareMode,
    required TResult Function(_CancelTrip value) cancelTrip,
    required TResult Function(_ChangeOriginPosition value) changeOriginPosition,
  }) {
    return cancelTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateRequest value)? bookTrip,
    TResult Function(_ToggleShareMode value)? toggleShareMode,
    TResult Function(_CancelTrip value)? cancelTrip,
    TResult Function(_ChangeOriginPosition value)? changeOriginPosition,
  }) {
    return cancelTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRequest value)? bookTrip,
    TResult Function(_ToggleShareMode value)? toggleShareMode,
    TResult Function(_CancelTrip value)? cancelTrip,
    TResult Function(_ChangeOriginPosition value)? changeOriginPosition,
    required TResult orElse(),
  }) {
    if (cancelTrip != null) {
      return cancelTrip(this);
    }
    return orElse();
  }
}

abstract class _CancelTrip implements TripEvent {
  const factory _CancelTrip() = _$_CancelTrip;
}

/// @nodoc
abstract class _$ChangeOriginPositionCopyWith<$Res> {
  factory _$ChangeOriginPositionCopyWith(_ChangeOriginPosition value,
          $Res Function(_ChangeOriginPosition) then) =
      __$ChangeOriginPositionCopyWithImpl<$Res>;
  $Res call({Coordinate coordinate});

  $CoordinateCopyWith<$Res> get coordinate;
}

/// @nodoc
class __$ChangeOriginPositionCopyWithImpl<$Res>
    extends _$TripEventCopyWithImpl<$Res>
    implements _$ChangeOriginPositionCopyWith<$Res> {
  __$ChangeOriginPositionCopyWithImpl(
      _ChangeOriginPosition _value, $Res Function(_ChangeOriginPosition) _then)
      : super(_value, (v) => _then(v as _ChangeOriginPosition));

  @override
  _ChangeOriginPosition get _value => super._value as _ChangeOriginPosition;

  @override
  $Res call({
    Object? coordinate = freezed,
  }) {
    return _then(_ChangeOriginPosition(
      coordinate == freezed
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
    ));
  }

  @override
  $CoordinateCopyWith<$Res> get coordinate {
    return $CoordinateCopyWith<$Res>(_value.coordinate, (value) {
      return _then(_value.copyWith(coordinate: value));
    });
  }
}

/// @nodoc

class _$_ChangeOriginPosition implements _ChangeOriginPosition {
  const _$_ChangeOriginPosition(this.coordinate);

  @override
  final Coordinate coordinate;

  @override
  String toString() {
    return 'TripEvent.changeOriginPosition(coordinate: $coordinate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeOriginPosition &&
            const DeepCollectionEquality()
                .equals(other.coordinate, coordinate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(coordinate));

  @JsonKey(ignore: true)
  @override
  _$ChangeOriginPositionCopyWith<_ChangeOriginPosition> get copyWith =>
      __$ChangeOriginPositionCopyWithImpl<_ChangeOriginPosition>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PassengerEntity passengerEntity) bookTrip,
    required TResult Function() toggleShareMode,
    required TResult Function() cancelTrip,
    required TResult Function(Coordinate coordinate) changeOriginPosition,
  }) {
    return changeOriginPosition(coordinate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PassengerEntity passengerEntity)? bookTrip,
    TResult Function()? toggleShareMode,
    TResult Function()? cancelTrip,
    TResult Function(Coordinate coordinate)? changeOriginPosition,
  }) {
    return changeOriginPosition?.call(coordinate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PassengerEntity passengerEntity)? bookTrip,
    TResult Function()? toggleShareMode,
    TResult Function()? cancelTrip,
    TResult Function(Coordinate coordinate)? changeOriginPosition,
    required TResult orElse(),
  }) {
    if (changeOriginPosition != null) {
      return changeOriginPosition(coordinate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRequest value) bookTrip,
    required TResult Function(_ToggleShareMode value) toggleShareMode,
    required TResult Function(_CancelTrip value) cancelTrip,
    required TResult Function(_ChangeOriginPosition value) changeOriginPosition,
  }) {
    return changeOriginPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateRequest value)? bookTrip,
    TResult Function(_ToggleShareMode value)? toggleShareMode,
    TResult Function(_CancelTrip value)? cancelTrip,
    TResult Function(_ChangeOriginPosition value)? changeOriginPosition,
  }) {
    return changeOriginPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRequest value)? bookTrip,
    TResult Function(_ToggleShareMode value)? toggleShareMode,
    TResult Function(_CancelTrip value)? cancelTrip,
    TResult Function(_ChangeOriginPosition value)? changeOriginPosition,
    required TResult orElse(),
  }) {
    if (changeOriginPosition != null) {
      return changeOriginPosition(this);
    }
    return orElse();
  }
}

abstract class _ChangeOriginPosition implements TripEvent {
  const factory _ChangeOriginPosition(Coordinate coordinate) =
      _$_ChangeOriginPosition;

  Coordinate get coordinate;
  @JsonKey(ignore: true)
  _$ChangeOriginPositionCopyWith<_ChangeOriginPosition> get copyWith =>
      throw _privateConstructorUsedError;
}
