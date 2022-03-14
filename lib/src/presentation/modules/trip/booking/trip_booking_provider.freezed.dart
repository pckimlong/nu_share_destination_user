// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip_booking_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TripBookingEventTearOff {
  const _$TripBookingEventTearOff();

  _ChangeDestinationLocation changeDestinationLocation(Coordinate coor) {
    return _ChangeDestinationLocation(
      coor,
    );
  }

  _ChangeOriginLocation changeOriginLocation(Coordinate coor) {
    return _ChangeOriginLocation(
      coor,
    );
  }

  _MoveToMyLocation moveToMyLocation() {
    return const _MoveToMyLocation();
  }

  _ChangeNote changeNote(String value) {
    return _ChangeNote(
      value,
    );
  }
}

/// @nodoc
const $TripBookingEvent = _$TripBookingEventTearOff();

/// @nodoc
mixin _$TripBookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coordinate coor) changeDestinationLocation,
    required TResult Function(Coordinate coor) changeOriginLocation,
    required TResult Function() moveToMyLocation,
    required TResult Function(String value) changeNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Coordinate coor)? changeDestinationLocation,
    TResult Function(Coordinate coor)? changeOriginLocation,
    TResult Function()? moveToMyLocation,
    TResult Function(String value)? changeNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coordinate coor)? changeDestinationLocation,
    TResult Function(Coordinate coor)? changeOriginLocation,
    TResult Function()? moveToMyLocation,
    TResult Function(String value)? changeNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeDestinationLocation value)
        changeDestinationLocation,
    required TResult Function(_ChangeOriginLocation value) changeOriginLocation,
    required TResult Function(_MoveToMyLocation value) moveToMyLocation,
    required TResult Function(_ChangeNote value) changeNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeDestinationLocation value)?
        changeDestinationLocation,
    TResult Function(_ChangeOriginLocation value)? changeOriginLocation,
    TResult Function(_MoveToMyLocation value)? moveToMyLocation,
    TResult Function(_ChangeNote value)? changeNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeDestinationLocation value)?
        changeDestinationLocation,
    TResult Function(_ChangeOriginLocation value)? changeOriginLocation,
    TResult Function(_MoveToMyLocation value)? moveToMyLocation,
    TResult Function(_ChangeNote value)? changeNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripBookingEventCopyWith<$Res> {
  factory $TripBookingEventCopyWith(
          TripBookingEvent value, $Res Function(TripBookingEvent) then) =
      _$TripBookingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TripBookingEventCopyWithImpl<$Res>
    implements $TripBookingEventCopyWith<$Res> {
  _$TripBookingEventCopyWithImpl(this._value, this._then);

  final TripBookingEvent _value;
  // ignore: unused_field
  final $Res Function(TripBookingEvent) _then;
}

/// @nodoc
abstract class _$ChangeDestinationLocationCopyWith<$Res> {
  factory _$ChangeDestinationLocationCopyWith(_ChangeDestinationLocation value,
          $Res Function(_ChangeDestinationLocation) then) =
      __$ChangeDestinationLocationCopyWithImpl<$Res>;
  $Res call({Coordinate coor});

  $CoordinateCopyWith<$Res> get coor;
}

/// @nodoc
class __$ChangeDestinationLocationCopyWithImpl<$Res>
    extends _$TripBookingEventCopyWithImpl<$Res>
    implements _$ChangeDestinationLocationCopyWith<$Res> {
  __$ChangeDestinationLocationCopyWithImpl(_ChangeDestinationLocation _value,
      $Res Function(_ChangeDestinationLocation) _then)
      : super(_value, (v) => _then(v as _ChangeDestinationLocation));

  @override
  _ChangeDestinationLocation get _value =>
      super._value as _ChangeDestinationLocation;

  @override
  $Res call({
    Object? coor = freezed,
  }) {
    return _then(_ChangeDestinationLocation(
      coor == freezed
          ? _value.coor
          : coor // ignore: cast_nullable_to_non_nullable
              as Coordinate,
    ));
  }

  @override
  $CoordinateCopyWith<$Res> get coor {
    return $CoordinateCopyWith<$Res>(_value.coor, (value) {
      return _then(_value.copyWith(coor: value));
    });
  }
}

/// @nodoc

class _$_ChangeDestinationLocation implements _ChangeDestinationLocation {
  const _$_ChangeDestinationLocation(this.coor);

  @override
  final Coordinate coor;

  @override
  String toString() {
    return 'TripBookingEvent.changeDestinationLocation(coor: $coor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeDestinationLocation &&
            const DeepCollectionEquality().equals(other.coor, coor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(coor));

  @JsonKey(ignore: true)
  @override
  _$ChangeDestinationLocationCopyWith<_ChangeDestinationLocation>
      get copyWith =>
          __$ChangeDestinationLocationCopyWithImpl<_ChangeDestinationLocation>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coordinate coor) changeDestinationLocation,
    required TResult Function(Coordinate coor) changeOriginLocation,
    required TResult Function() moveToMyLocation,
    required TResult Function(String value) changeNote,
  }) {
    return changeDestinationLocation(coor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Coordinate coor)? changeDestinationLocation,
    TResult Function(Coordinate coor)? changeOriginLocation,
    TResult Function()? moveToMyLocation,
    TResult Function(String value)? changeNote,
  }) {
    return changeDestinationLocation?.call(coor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coordinate coor)? changeDestinationLocation,
    TResult Function(Coordinate coor)? changeOriginLocation,
    TResult Function()? moveToMyLocation,
    TResult Function(String value)? changeNote,
    required TResult orElse(),
  }) {
    if (changeDestinationLocation != null) {
      return changeDestinationLocation(coor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeDestinationLocation value)
        changeDestinationLocation,
    required TResult Function(_ChangeOriginLocation value) changeOriginLocation,
    required TResult Function(_MoveToMyLocation value) moveToMyLocation,
    required TResult Function(_ChangeNote value) changeNote,
  }) {
    return changeDestinationLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeDestinationLocation value)?
        changeDestinationLocation,
    TResult Function(_ChangeOriginLocation value)? changeOriginLocation,
    TResult Function(_MoveToMyLocation value)? moveToMyLocation,
    TResult Function(_ChangeNote value)? changeNote,
  }) {
    return changeDestinationLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeDestinationLocation value)?
        changeDestinationLocation,
    TResult Function(_ChangeOriginLocation value)? changeOriginLocation,
    TResult Function(_MoveToMyLocation value)? moveToMyLocation,
    TResult Function(_ChangeNote value)? changeNote,
    required TResult orElse(),
  }) {
    if (changeDestinationLocation != null) {
      return changeDestinationLocation(this);
    }
    return orElse();
  }
}

abstract class _ChangeDestinationLocation implements TripBookingEvent {
  const factory _ChangeDestinationLocation(Coordinate coor) =
      _$_ChangeDestinationLocation;

  Coordinate get coor;
  @JsonKey(ignore: true)
  _$ChangeDestinationLocationCopyWith<_ChangeDestinationLocation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeOriginLocationCopyWith<$Res> {
  factory _$ChangeOriginLocationCopyWith(_ChangeOriginLocation value,
          $Res Function(_ChangeOriginLocation) then) =
      __$ChangeOriginLocationCopyWithImpl<$Res>;
  $Res call({Coordinate coor});

  $CoordinateCopyWith<$Res> get coor;
}

/// @nodoc
class __$ChangeOriginLocationCopyWithImpl<$Res>
    extends _$TripBookingEventCopyWithImpl<$Res>
    implements _$ChangeOriginLocationCopyWith<$Res> {
  __$ChangeOriginLocationCopyWithImpl(
      _ChangeOriginLocation _value, $Res Function(_ChangeOriginLocation) _then)
      : super(_value, (v) => _then(v as _ChangeOriginLocation));

  @override
  _ChangeOriginLocation get _value => super._value as _ChangeOriginLocation;

  @override
  $Res call({
    Object? coor = freezed,
  }) {
    return _then(_ChangeOriginLocation(
      coor == freezed
          ? _value.coor
          : coor // ignore: cast_nullable_to_non_nullable
              as Coordinate,
    ));
  }

  @override
  $CoordinateCopyWith<$Res> get coor {
    return $CoordinateCopyWith<$Res>(_value.coor, (value) {
      return _then(_value.copyWith(coor: value));
    });
  }
}

/// @nodoc

class _$_ChangeOriginLocation implements _ChangeOriginLocation {
  const _$_ChangeOriginLocation(this.coor);

  @override
  final Coordinate coor;

  @override
  String toString() {
    return 'TripBookingEvent.changeOriginLocation(coor: $coor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeOriginLocation &&
            const DeepCollectionEquality().equals(other.coor, coor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(coor));

  @JsonKey(ignore: true)
  @override
  _$ChangeOriginLocationCopyWith<_ChangeOriginLocation> get copyWith =>
      __$ChangeOriginLocationCopyWithImpl<_ChangeOriginLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coordinate coor) changeDestinationLocation,
    required TResult Function(Coordinate coor) changeOriginLocation,
    required TResult Function() moveToMyLocation,
    required TResult Function(String value) changeNote,
  }) {
    return changeOriginLocation(coor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Coordinate coor)? changeDestinationLocation,
    TResult Function(Coordinate coor)? changeOriginLocation,
    TResult Function()? moveToMyLocation,
    TResult Function(String value)? changeNote,
  }) {
    return changeOriginLocation?.call(coor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coordinate coor)? changeDestinationLocation,
    TResult Function(Coordinate coor)? changeOriginLocation,
    TResult Function()? moveToMyLocation,
    TResult Function(String value)? changeNote,
    required TResult orElse(),
  }) {
    if (changeOriginLocation != null) {
      return changeOriginLocation(coor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeDestinationLocation value)
        changeDestinationLocation,
    required TResult Function(_ChangeOriginLocation value) changeOriginLocation,
    required TResult Function(_MoveToMyLocation value) moveToMyLocation,
    required TResult Function(_ChangeNote value) changeNote,
  }) {
    return changeOriginLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeDestinationLocation value)?
        changeDestinationLocation,
    TResult Function(_ChangeOriginLocation value)? changeOriginLocation,
    TResult Function(_MoveToMyLocation value)? moveToMyLocation,
    TResult Function(_ChangeNote value)? changeNote,
  }) {
    return changeOriginLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeDestinationLocation value)?
        changeDestinationLocation,
    TResult Function(_ChangeOriginLocation value)? changeOriginLocation,
    TResult Function(_MoveToMyLocation value)? moveToMyLocation,
    TResult Function(_ChangeNote value)? changeNote,
    required TResult orElse(),
  }) {
    if (changeOriginLocation != null) {
      return changeOriginLocation(this);
    }
    return orElse();
  }
}

abstract class _ChangeOriginLocation implements TripBookingEvent {
  const factory _ChangeOriginLocation(Coordinate coor) =
      _$_ChangeOriginLocation;

  Coordinate get coor;
  @JsonKey(ignore: true)
  _$ChangeOriginLocationCopyWith<_ChangeOriginLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MoveToMyLocationCopyWith<$Res> {
  factory _$MoveToMyLocationCopyWith(
          _MoveToMyLocation value, $Res Function(_MoveToMyLocation) then) =
      __$MoveToMyLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$MoveToMyLocationCopyWithImpl<$Res>
    extends _$TripBookingEventCopyWithImpl<$Res>
    implements _$MoveToMyLocationCopyWith<$Res> {
  __$MoveToMyLocationCopyWithImpl(
      _MoveToMyLocation _value, $Res Function(_MoveToMyLocation) _then)
      : super(_value, (v) => _then(v as _MoveToMyLocation));

  @override
  _MoveToMyLocation get _value => super._value as _MoveToMyLocation;
}

/// @nodoc

class _$_MoveToMyLocation implements _MoveToMyLocation {
  const _$_MoveToMyLocation();

  @override
  String toString() {
    return 'TripBookingEvent.moveToMyLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MoveToMyLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coordinate coor) changeDestinationLocation,
    required TResult Function(Coordinate coor) changeOriginLocation,
    required TResult Function() moveToMyLocation,
    required TResult Function(String value) changeNote,
  }) {
    return moveToMyLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Coordinate coor)? changeDestinationLocation,
    TResult Function(Coordinate coor)? changeOriginLocation,
    TResult Function()? moveToMyLocation,
    TResult Function(String value)? changeNote,
  }) {
    return moveToMyLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coordinate coor)? changeDestinationLocation,
    TResult Function(Coordinate coor)? changeOriginLocation,
    TResult Function()? moveToMyLocation,
    TResult Function(String value)? changeNote,
    required TResult orElse(),
  }) {
    if (moveToMyLocation != null) {
      return moveToMyLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeDestinationLocation value)
        changeDestinationLocation,
    required TResult Function(_ChangeOriginLocation value) changeOriginLocation,
    required TResult Function(_MoveToMyLocation value) moveToMyLocation,
    required TResult Function(_ChangeNote value) changeNote,
  }) {
    return moveToMyLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeDestinationLocation value)?
        changeDestinationLocation,
    TResult Function(_ChangeOriginLocation value)? changeOriginLocation,
    TResult Function(_MoveToMyLocation value)? moveToMyLocation,
    TResult Function(_ChangeNote value)? changeNote,
  }) {
    return moveToMyLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeDestinationLocation value)?
        changeDestinationLocation,
    TResult Function(_ChangeOriginLocation value)? changeOriginLocation,
    TResult Function(_MoveToMyLocation value)? moveToMyLocation,
    TResult Function(_ChangeNote value)? changeNote,
    required TResult orElse(),
  }) {
    if (moveToMyLocation != null) {
      return moveToMyLocation(this);
    }
    return orElse();
  }
}

abstract class _MoveToMyLocation implements TripBookingEvent {
  const factory _MoveToMyLocation() = _$_MoveToMyLocation;
}

/// @nodoc
abstract class _$ChangeNoteCopyWith<$Res> {
  factory _$ChangeNoteCopyWith(
          _ChangeNote value, $Res Function(_ChangeNote) then) =
      __$ChangeNoteCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$ChangeNoteCopyWithImpl<$Res>
    extends _$TripBookingEventCopyWithImpl<$Res>
    implements _$ChangeNoteCopyWith<$Res> {
  __$ChangeNoteCopyWithImpl(
      _ChangeNote _value, $Res Function(_ChangeNote) _then)
      : super(_value, (v) => _then(v as _ChangeNote));

  @override
  _ChangeNote get _value => super._value as _ChangeNote;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ChangeNote(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeNote implements _ChangeNote {
  const _$_ChangeNote(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'TripBookingEvent.changeNote(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeNote &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$ChangeNoteCopyWith<_ChangeNote> get copyWith =>
      __$ChangeNoteCopyWithImpl<_ChangeNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Coordinate coor) changeDestinationLocation,
    required TResult Function(Coordinate coor) changeOriginLocation,
    required TResult Function() moveToMyLocation,
    required TResult Function(String value) changeNote,
  }) {
    return changeNote(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Coordinate coor)? changeDestinationLocation,
    TResult Function(Coordinate coor)? changeOriginLocation,
    TResult Function()? moveToMyLocation,
    TResult Function(String value)? changeNote,
  }) {
    return changeNote?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Coordinate coor)? changeDestinationLocation,
    TResult Function(Coordinate coor)? changeOriginLocation,
    TResult Function()? moveToMyLocation,
    TResult Function(String value)? changeNote,
    required TResult orElse(),
  }) {
    if (changeNote != null) {
      return changeNote(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeDestinationLocation value)
        changeDestinationLocation,
    required TResult Function(_ChangeOriginLocation value) changeOriginLocation,
    required TResult Function(_MoveToMyLocation value) moveToMyLocation,
    required TResult Function(_ChangeNote value) changeNote,
  }) {
    return changeNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeDestinationLocation value)?
        changeDestinationLocation,
    TResult Function(_ChangeOriginLocation value)? changeOriginLocation,
    TResult Function(_MoveToMyLocation value)? moveToMyLocation,
    TResult Function(_ChangeNote value)? changeNote,
  }) {
    return changeNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeDestinationLocation value)?
        changeDestinationLocation,
    TResult Function(_ChangeOriginLocation value)? changeOriginLocation,
    TResult Function(_MoveToMyLocation value)? moveToMyLocation,
    TResult Function(_ChangeNote value)? changeNote,
    required TResult orElse(),
  }) {
    if (changeNote != null) {
      return changeNote(this);
    }
    return orElse();
  }
}

abstract class _ChangeNote implements TripBookingEvent {
  const factory _ChangeNote(String value) = _$_ChangeNote;

  String get value;
  @JsonKey(ignore: true)
  _$ChangeNoteCopyWith<_ChangeNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TripBookingStateTearOff {
  const _$TripBookingStateTearOff();

  _TripBookingState call(
      {required IList<LocationDetail> nearbyDrivers,
      required Option<LocationAddress> originLocation,
      required Option<LocationAddress> definationLocation,
      required bool isLoading,
      required String note,
      required Option<LocationFailure> failure,
      required Option<DriverFailure> driverFailure,
      required Option<Coordinate> myLocation}) {
    return _TripBookingState(
      nearbyDrivers: nearbyDrivers,
      originLocation: originLocation,
      definationLocation: definationLocation,
      isLoading: isLoading,
      note: note,
      failure: failure,
      driverFailure: driverFailure,
      myLocation: myLocation,
    );
  }
}

/// @nodoc
const $TripBookingState = _$TripBookingStateTearOff();

/// @nodoc
mixin _$TripBookingState {
  IList<LocationDetail> get nearbyDrivers => throw _privateConstructorUsedError;
  Option<LocationAddress> get originLocation =>
      throw _privateConstructorUsedError;
  Option<LocationAddress> get definationLocation =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  Option<LocationFailure> get failure => throw _privateConstructorUsedError;
  Option<DriverFailure> get driverFailure => throw _privateConstructorUsedError;

  /// This use for navigate to my location in google map
  /// because google map controller cannot put inside state.
  /// And I want to move to my location from other widget which not contain
  /// google map controller. This will use listener to navigate
  Option<Coordinate> get myLocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripBookingStateCopyWith<TripBookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripBookingStateCopyWith<$Res> {
  factory $TripBookingStateCopyWith(
          TripBookingState value, $Res Function(TripBookingState) then) =
      _$TripBookingStateCopyWithImpl<$Res>;
  $Res call(
      {IList<LocationDetail> nearbyDrivers,
      Option<LocationAddress> originLocation,
      Option<LocationAddress> definationLocation,
      bool isLoading,
      String note,
      Option<LocationFailure> failure,
      Option<DriverFailure> driverFailure,
      Option<Coordinate> myLocation});
}

/// @nodoc
class _$TripBookingStateCopyWithImpl<$Res>
    implements $TripBookingStateCopyWith<$Res> {
  _$TripBookingStateCopyWithImpl(this._value, this._then);

  final TripBookingState _value;
  // ignore: unused_field
  final $Res Function(TripBookingState) _then;

  @override
  $Res call({
    Object? nearbyDrivers = freezed,
    Object? originLocation = freezed,
    Object? definationLocation = freezed,
    Object? isLoading = freezed,
    Object? note = freezed,
    Object? failure = freezed,
    Object? driverFailure = freezed,
    Object? myLocation = freezed,
  }) {
    return _then(_value.copyWith(
      nearbyDrivers: nearbyDrivers == freezed
          ? _value.nearbyDrivers
          : nearbyDrivers // ignore: cast_nullable_to_non_nullable
              as IList<LocationDetail>,
      originLocation: originLocation == freezed
          ? _value.originLocation
          : originLocation // ignore: cast_nullable_to_non_nullable
              as Option<LocationAddress>,
      definationLocation: definationLocation == freezed
          ? _value.definationLocation
          : definationLocation // ignore: cast_nullable_to_non_nullable
              as Option<LocationAddress>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      driverFailure: driverFailure == freezed
          ? _value.driverFailure
          : driverFailure // ignore: cast_nullable_to_non_nullable
              as Option<DriverFailure>,
      myLocation: myLocation == freezed
          ? _value.myLocation
          : myLocation // ignore: cast_nullable_to_non_nullable
              as Option<Coordinate>,
    ));
  }
}

/// @nodoc
abstract class _$TripBookingStateCopyWith<$Res>
    implements $TripBookingStateCopyWith<$Res> {
  factory _$TripBookingStateCopyWith(
          _TripBookingState value, $Res Function(_TripBookingState) then) =
      __$TripBookingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {IList<LocationDetail> nearbyDrivers,
      Option<LocationAddress> originLocation,
      Option<LocationAddress> definationLocation,
      bool isLoading,
      String note,
      Option<LocationFailure> failure,
      Option<DriverFailure> driverFailure,
      Option<Coordinate> myLocation});
}

/// @nodoc
class __$TripBookingStateCopyWithImpl<$Res>
    extends _$TripBookingStateCopyWithImpl<$Res>
    implements _$TripBookingStateCopyWith<$Res> {
  __$TripBookingStateCopyWithImpl(
      _TripBookingState _value, $Res Function(_TripBookingState) _then)
      : super(_value, (v) => _then(v as _TripBookingState));

  @override
  _TripBookingState get _value => super._value as _TripBookingState;

  @override
  $Res call({
    Object? nearbyDrivers = freezed,
    Object? originLocation = freezed,
    Object? definationLocation = freezed,
    Object? isLoading = freezed,
    Object? note = freezed,
    Object? failure = freezed,
    Object? driverFailure = freezed,
    Object? myLocation = freezed,
  }) {
    return _then(_TripBookingState(
      nearbyDrivers: nearbyDrivers == freezed
          ? _value.nearbyDrivers
          : nearbyDrivers // ignore: cast_nullable_to_non_nullable
              as IList<LocationDetail>,
      originLocation: originLocation == freezed
          ? _value.originLocation
          : originLocation // ignore: cast_nullable_to_non_nullable
              as Option<LocationAddress>,
      definationLocation: definationLocation == freezed
          ? _value.definationLocation
          : definationLocation // ignore: cast_nullable_to_non_nullable
              as Option<LocationAddress>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      driverFailure: driverFailure == freezed
          ? _value.driverFailure
          : driverFailure // ignore: cast_nullable_to_non_nullable
              as Option<DriverFailure>,
      myLocation: myLocation == freezed
          ? _value.myLocation
          : myLocation // ignore: cast_nullable_to_non_nullable
              as Option<Coordinate>,
    ));
  }
}

/// @nodoc

class _$_TripBookingState implements _TripBookingState {
  _$_TripBookingState(
      {required this.nearbyDrivers,
      required this.originLocation,
      required this.definationLocation,
      required this.isLoading,
      required this.note,
      required this.failure,
      required this.driverFailure,
      required this.myLocation});

  @override
  final IList<LocationDetail> nearbyDrivers;
  @override
  final Option<LocationAddress> originLocation;
  @override
  final Option<LocationAddress> definationLocation;
  @override
  final bool isLoading;
  @override
  final String note;
  @override
  final Option<LocationFailure> failure;
  @override
  final Option<DriverFailure> driverFailure;
  @override

  /// This use for navigate to my location in google map
  /// because google map controller cannot put inside state.
  /// And I want to move to my location from other widget which not contain
  /// google map controller. This will use listener to navigate
  final Option<Coordinate> myLocation;

  @override
  String toString() {
    return 'TripBookingState(nearbyDrivers: $nearbyDrivers, originLocation: $originLocation, definationLocation: $definationLocation, isLoading: $isLoading, note: $note, failure: $failure, driverFailure: $driverFailure, myLocation: $myLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TripBookingState &&
            const DeepCollectionEquality()
                .equals(other.nearbyDrivers, nearbyDrivers) &&
            const DeepCollectionEquality()
                .equals(other.originLocation, originLocation) &&
            const DeepCollectionEquality()
                .equals(other.definationLocation, definationLocation) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality()
                .equals(other.driverFailure, driverFailure) &&
            const DeepCollectionEquality()
                .equals(other.myLocation, myLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nearbyDrivers),
      const DeepCollectionEquality().hash(originLocation),
      const DeepCollectionEquality().hash(definationLocation),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(driverFailure),
      const DeepCollectionEquality().hash(myLocation));

  @JsonKey(ignore: true)
  @override
  _$TripBookingStateCopyWith<_TripBookingState> get copyWith =>
      __$TripBookingStateCopyWithImpl<_TripBookingState>(this, _$identity);
}

abstract class _TripBookingState implements TripBookingState {
  factory _TripBookingState(
      {required IList<LocationDetail> nearbyDrivers,
      required Option<LocationAddress> originLocation,
      required Option<LocationAddress> definationLocation,
      required bool isLoading,
      required String note,
      required Option<LocationFailure> failure,
      required Option<DriverFailure> driverFailure,
      required Option<Coordinate> myLocation}) = _$_TripBookingState;

  @override
  IList<LocationDetail> get nearbyDrivers;
  @override
  Option<LocationAddress> get originLocation;
  @override
  Option<LocationAddress> get definationLocation;
  @override
  bool get isLoading;
  @override
  String get note;
  @override
  Option<LocationFailure> get failure;
  @override
  Option<DriverFailure> get driverFailure;
  @override

  /// This use for navigate to my location in google map
  /// because google map controller cannot put inside state.
  /// And I want to move to my location from other widget which not contain
  /// google map controller. This will use listener to navigate
  Option<Coordinate> get myLocation;
  @override
  @JsonKey(ignore: true)
  _$TripBookingStateCopyWith<_TripBookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
