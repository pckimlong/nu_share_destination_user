// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip_booking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TripBookingStateTearOff {
  const _$TripBookingStateTearOff();

  _TripBookingState call(
      {required IList<DriverEntity> nearbyDrivers,
      required d.Option<LocationAddress> originLocation,
      required d.Option<LocationAddress> definationLocation,
      required bool isLoading,
      required String? note,
      required d.Option<LocationFailure> failure,
      required d.Option<Coordinate> myLocation}) {
    return _TripBookingState(
      nearbyDrivers: nearbyDrivers,
      originLocation: originLocation,
      definationLocation: definationLocation,
      isLoading: isLoading,
      note: note,
      failure: failure,
      myLocation: myLocation,
    );
  }
}

/// @nodoc
const $TripBookingState = _$TripBookingStateTearOff();

/// @nodoc
mixin _$TripBookingState {
  IList<DriverEntity> get nearbyDrivers => throw _privateConstructorUsedError;
  d.Option<LocationAddress> get originLocation =>
      throw _privateConstructorUsedError;
  d.Option<LocationAddress> get definationLocation =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  d.Option<LocationFailure> get failure => throw _privateConstructorUsedError;

  /// This use for navigate to my location in google map
  /// because google map controller cannot put inside state.
  /// And I want to move to my location from other widget which not contain
  /// google map controller. This will use listener to navigate
  d.Option<Coordinate> get myLocation => throw _privateConstructorUsedError;

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
      {IList<DriverEntity> nearbyDrivers,
      d.Option<LocationAddress> originLocation,
      d.Option<LocationAddress> definationLocation,
      bool isLoading,
      String? note,
      d.Option<LocationFailure> failure,
      d.Option<Coordinate> myLocation});
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
    Object? myLocation = freezed,
  }) {
    return _then(_value.copyWith(
      nearbyDrivers: nearbyDrivers == freezed
          ? _value.nearbyDrivers
          : nearbyDrivers // ignore: cast_nullable_to_non_nullable
              as IList<DriverEntity>,
      originLocation: originLocation == freezed
          ? _value.originLocation
          : originLocation // ignore: cast_nullable_to_non_nullable
              as d.Option<LocationAddress>,
      definationLocation: definationLocation == freezed
          ? _value.definationLocation
          : definationLocation // ignore: cast_nullable_to_non_nullable
              as d.Option<LocationAddress>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as d.Option<LocationFailure>,
      myLocation: myLocation == freezed
          ? _value.myLocation
          : myLocation // ignore: cast_nullable_to_non_nullable
              as d.Option<Coordinate>,
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
      {IList<DriverEntity> nearbyDrivers,
      d.Option<LocationAddress> originLocation,
      d.Option<LocationAddress> definationLocation,
      bool isLoading,
      String? note,
      d.Option<LocationFailure> failure,
      d.Option<Coordinate> myLocation});
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
    Object? myLocation = freezed,
  }) {
    return _then(_TripBookingState(
      nearbyDrivers: nearbyDrivers == freezed
          ? _value.nearbyDrivers
          : nearbyDrivers // ignore: cast_nullable_to_non_nullable
              as IList<DriverEntity>,
      originLocation: originLocation == freezed
          ? _value.originLocation
          : originLocation // ignore: cast_nullable_to_non_nullable
              as d.Option<LocationAddress>,
      definationLocation: definationLocation == freezed
          ? _value.definationLocation
          : definationLocation // ignore: cast_nullable_to_non_nullable
              as d.Option<LocationAddress>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as d.Option<LocationFailure>,
      myLocation: myLocation == freezed
          ? _value.myLocation
          : myLocation // ignore: cast_nullable_to_non_nullable
              as d.Option<Coordinate>,
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
      required this.myLocation});

  @override
  final IList<DriverEntity> nearbyDrivers;
  @override
  final d.Option<LocationAddress> originLocation;
  @override
  final d.Option<LocationAddress> definationLocation;
  @override
  final bool isLoading;
  @override
  final String? note;
  @override
  final d.Option<LocationFailure> failure;
  @override

  /// This use for navigate to my location in google map
  /// because google map controller cannot put inside state.
  /// And I want to move to my location from other widget which not contain
  /// google map controller. This will use listener to navigate
  final d.Option<Coordinate> myLocation;

  @override
  String toString() {
    return 'TripBookingState(nearbyDrivers: $nearbyDrivers, originLocation: $originLocation, definationLocation: $definationLocation, isLoading: $isLoading, note: $note, failure: $failure, myLocation: $myLocation)';
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
      const DeepCollectionEquality().hash(myLocation));

  @JsonKey(ignore: true)
  @override
  _$TripBookingStateCopyWith<_TripBookingState> get copyWith =>
      __$TripBookingStateCopyWithImpl<_TripBookingState>(this, _$identity);
}

abstract class _TripBookingState implements TripBookingState {
  factory _TripBookingState(
      {required IList<DriverEntity> nearbyDrivers,
      required d.Option<LocationAddress> originLocation,
      required d.Option<LocationAddress> definationLocation,
      required bool isLoading,
      required String? note,
      required d.Option<LocationFailure> failure,
      required d.Option<Coordinate> myLocation}) = _$_TripBookingState;

  @override
  IList<DriverEntity> get nearbyDrivers;
  @override
  d.Option<LocationAddress> get originLocation;
  @override
  d.Option<LocationAddress> get definationLocation;
  @override
  bool get isLoading;
  @override
  String? get note;
  @override
  d.Option<LocationFailure> get failure;
  @override

  /// This use for navigate to my location in google map
  /// because google map controller cannot put inside state.
  /// And I want to move to my location from other widget which not contain
  /// google map controller. This will use listener to navigate
  d.Option<Coordinate> get myLocation;
  @override
  @JsonKey(ignore: true)
  _$TripBookingStateCopyWith<_TripBookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
