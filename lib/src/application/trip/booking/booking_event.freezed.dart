// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookingEventTearOff {
  const _$BookingEventTearOff();

  _ChangeOriginPosition changeOriginPosition(Coordinate coordinate) {
    return _ChangeOriginPosition(
      coordinate,
    );
  }
}

/// @nodoc
const $BookingEvent = _$BookingEventTearOff();

/// @nodoc
mixin _$BookingEvent {
  Coordinate get coordinate => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coordinate coordinate) changeOriginPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Coordinate coordinate)? changeOriginPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coordinate coordinate)? changeOriginPosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeOriginPosition value) changeOriginPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeOriginPosition value)? changeOriginPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeOriginPosition value)? changeOriginPosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingEventCopyWith<BookingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
          BookingEvent value, $Res Function(BookingEvent) then) =
      _$BookingEventCopyWithImpl<$Res>;
  $Res call({Coordinate coordinate});

  $CoordinateCopyWith<$Res> get coordinate;
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res> implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  final BookingEvent _value;
  // ignore: unused_field
  final $Res Function(BookingEvent) _then;

  @override
  $Res call({
    Object? coordinate = freezed,
  }) {
    return _then(_value.copyWith(
      coordinate: coordinate == freezed
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
abstract class _$ChangeOriginPositionCopyWith<$Res>
    implements $BookingEventCopyWith<$Res> {
  factory _$ChangeOriginPositionCopyWith(_ChangeOriginPosition value,
          $Res Function(_ChangeOriginPosition) then) =
      __$ChangeOriginPositionCopyWithImpl<$Res>;
  @override
  $Res call({Coordinate coordinate});

  @override
  $CoordinateCopyWith<$Res> get coordinate;
}

/// @nodoc
class __$ChangeOriginPositionCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res>
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
}

/// @nodoc

class _$_ChangeOriginPosition implements _ChangeOriginPosition {
  const _$_ChangeOriginPosition(this.coordinate);

  @override
  final Coordinate coordinate;

  @override
  String toString() {
    return 'BookingEvent.changeOriginPosition(coordinate: $coordinate)';
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
    required TResult Function(Coordinate coordinate) changeOriginPosition,
  }) {
    return changeOriginPosition(coordinate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Coordinate coordinate)? changeOriginPosition,
  }) {
    return changeOriginPosition?.call(coordinate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_ChangeOriginPosition value) changeOriginPosition,
  }) {
    return changeOriginPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeOriginPosition value)? changeOriginPosition,
  }) {
    return changeOriginPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeOriginPosition value)? changeOriginPosition,
    required TResult orElse(),
  }) {
    if (changeOriginPosition != null) {
      return changeOriginPosition(this);
    }
    return orElse();
  }
}

abstract class _ChangeOriginPosition implements BookingEvent {
  const factory _ChangeOriginPosition(Coordinate coordinate) =
      _$_ChangeOriginPosition;

  @override
  Coordinate get coordinate;
  @override
  @JsonKey(ignore: true)
  _$ChangeOriginPositionCopyWith<_ChangeOriginPosition> get copyWith =>
      throw _privateConstructorUsedError;
}
