// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationPickerStateTearOff {
  const _$LocationPickerStateTearOff();

  _LocationPickerState call(
      {required fic.IList<PlaceEntity> places,
      required Option<LocationPointDetail> initialOriginLocation,
      required Option<LocationPointDetail> selectedDesitination,
      bool isLoading = false,
      required Option<LocationFailure> failure}) {
    return _LocationPickerState(
      places: places,
      initialOriginLocation: initialOriginLocation,
      selectedDesitination: selectedDesitination,
      isLoading: isLoading,
      failure: failure,
    );
  }
}

/// @nodoc
const $LocationPickerState = _$LocationPickerStateTearOff();

/// @nodoc
mixin _$LocationPickerState {
  fic.IList<PlaceEntity> get places => throw _privateConstructorUsedError;
  Option<LocationPointDetail> get initialOriginLocation =>
      throw _privateConstructorUsedError;
  Option<LocationPointDetail> get selectedDesitination =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<LocationFailure> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationPickerStateCopyWith<LocationPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPickerStateCopyWith<$Res> {
  factory $LocationPickerStateCopyWith(
          LocationPickerState value, $Res Function(LocationPickerState) then) =
      _$LocationPickerStateCopyWithImpl<$Res>;
  $Res call(
      {fic.IList<PlaceEntity> places,
      Option<LocationPointDetail> initialOriginLocation,
      Option<LocationPointDetail> selectedDesitination,
      bool isLoading,
      Option<LocationFailure> failure});
}

/// @nodoc
class _$LocationPickerStateCopyWithImpl<$Res>
    implements $LocationPickerStateCopyWith<$Res> {
  _$LocationPickerStateCopyWithImpl(this._value, this._then);

  final LocationPickerState _value;
  // ignore: unused_field
  final $Res Function(LocationPickerState) _then;

  @override
  $Res call({
    Object? places = freezed,
    Object? initialOriginLocation = freezed,
    Object? selectedDesitination = freezed,
    Object? isLoading = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as fic.IList<PlaceEntity>,
      initialOriginLocation: initialOriginLocation == freezed
          ? _value.initialOriginLocation
          : initialOriginLocation // ignore: cast_nullable_to_non_nullable
              as Option<LocationPointDetail>,
      selectedDesitination: selectedDesitination == freezed
          ? _value.selectedDesitination
          : selectedDesitination // ignore: cast_nullable_to_non_nullable
              as Option<LocationPointDetail>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
    ));
  }
}

/// @nodoc
abstract class _$LocationPickerStateCopyWith<$Res>
    implements $LocationPickerStateCopyWith<$Res> {
  factory _$LocationPickerStateCopyWith(_LocationPickerState value,
          $Res Function(_LocationPickerState) then) =
      __$LocationPickerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {fic.IList<PlaceEntity> places,
      Option<LocationPointDetail> initialOriginLocation,
      Option<LocationPointDetail> selectedDesitination,
      bool isLoading,
      Option<LocationFailure> failure});
}

/// @nodoc
class __$LocationPickerStateCopyWithImpl<$Res>
    extends _$LocationPickerStateCopyWithImpl<$Res>
    implements _$LocationPickerStateCopyWith<$Res> {
  __$LocationPickerStateCopyWithImpl(
      _LocationPickerState _value, $Res Function(_LocationPickerState) _then)
      : super(_value, (v) => _then(v as _LocationPickerState));

  @override
  _LocationPickerState get _value => super._value as _LocationPickerState;

  @override
  $Res call({
    Object? places = freezed,
    Object? initialOriginLocation = freezed,
    Object? selectedDesitination = freezed,
    Object? isLoading = freezed,
    Object? failure = freezed,
  }) {
    return _then(_LocationPickerState(
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as fic.IList<PlaceEntity>,
      initialOriginLocation: initialOriginLocation == freezed
          ? _value.initialOriginLocation
          : initialOriginLocation // ignore: cast_nullable_to_non_nullable
              as Option<LocationPointDetail>,
      selectedDesitination: selectedDesitination == freezed
          ? _value.selectedDesitination
          : selectedDesitination // ignore: cast_nullable_to_non_nullable
              as Option<LocationPointDetail>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
    ));
  }
}

/// @nodoc

class _$_LocationPickerState implements _LocationPickerState {
  _$_LocationPickerState(
      {required this.places,
      required this.initialOriginLocation,
      required this.selectedDesitination,
      this.isLoading = false,
      required this.failure});

  @override
  final fic.IList<PlaceEntity> places;
  @override
  final Option<LocationPointDetail> initialOriginLocation;
  @override
  final Option<LocationPointDetail> selectedDesitination;
  @JsonKey()
  @override
  final bool isLoading;
  @override
  final Option<LocationFailure> failure;

  @override
  String toString() {
    return 'LocationPickerState(places: $places, initialOriginLocation: $initialOriginLocation, selectedDesitination: $selectedDesitination, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationPickerState &&
            const DeepCollectionEquality().equals(other.places, places) &&
            const DeepCollectionEquality()
                .equals(other.initialOriginLocation, initialOriginLocation) &&
            const DeepCollectionEquality()
                .equals(other.selectedDesitination, selectedDesitination) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(places),
      const DeepCollectionEquality().hash(initialOriginLocation),
      const DeepCollectionEquality().hash(selectedDesitination),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$LocationPickerStateCopyWith<_LocationPickerState> get copyWith =>
      __$LocationPickerStateCopyWithImpl<_LocationPickerState>(
          this, _$identity);
}

abstract class _LocationPickerState implements LocationPickerState {
  factory _LocationPickerState(
      {required fic.IList<PlaceEntity> places,
      required Option<LocationPointDetail> initialOriginLocation,
      required Option<LocationPointDetail> selectedDesitination,
      bool isLoading,
      required Option<LocationFailure> failure}) = _$_LocationPickerState;

  @override
  fic.IList<PlaceEntity> get places;
  @override
  Option<LocationPointDetail> get initialOriginLocation;
  @override
  Option<LocationPointDetail> get selectedDesitination;
  @override
  bool get isLoading;
  @override
  Option<LocationFailure> get failure;
  @override
  @JsonKey(ignore: true)
  _$LocationPickerStateCopyWith<_LocationPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}
