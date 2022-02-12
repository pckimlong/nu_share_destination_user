// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coordinate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Coordinate _$CoordinateFromJson(Map<String, dynamic> json) {
  return _Coordinate.fromJson(json);
}

/// @nodoc
class _$CoordinateTearOff {
  const _$CoordinateTearOff();

  _Coordinate call(@JsonKey(name: Coordinate.latitudeKey) double latitude,
      @JsonKey(name: Coordinate.longitudeKey) double longitude) {
    return _Coordinate(
      latitude,
      longitude,
    );
  }

  Coordinate fromJson(Map<String, Object?> json) {
    return Coordinate.fromJson(json);
  }
}

/// @nodoc
const $Coordinate = _$CoordinateTearOff();

/// @nodoc
mixin _$Coordinate {
  @JsonKey(name: Coordinate.latitudeKey)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: Coordinate.longitudeKey)
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinateCopyWith<Coordinate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinateCopyWith<$Res> {
  factory $CoordinateCopyWith(
          Coordinate value, $Res Function(Coordinate) then) =
      _$CoordinateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: Coordinate.latitudeKey) double latitude,
      @JsonKey(name: Coordinate.longitudeKey) double longitude});
}

/// @nodoc
class _$CoordinateCopyWithImpl<$Res> implements $CoordinateCopyWith<$Res> {
  _$CoordinateCopyWithImpl(this._value, this._then);

  final Coordinate _value;
  // ignore: unused_field
  final $Res Function(Coordinate) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$CoordinateCopyWith<$Res> implements $CoordinateCopyWith<$Res> {
  factory _$CoordinateCopyWith(
          _Coordinate value, $Res Function(_Coordinate) then) =
      __$CoordinateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: Coordinate.latitudeKey) double latitude,
      @JsonKey(name: Coordinate.longitudeKey) double longitude});
}

/// @nodoc
class __$CoordinateCopyWithImpl<$Res> extends _$CoordinateCopyWithImpl<$Res>
    implements _$CoordinateCopyWith<$Res> {
  __$CoordinateCopyWithImpl(
      _Coordinate _value, $Res Function(_Coordinate) _then)
      : super(_value, (v) => _then(v as _Coordinate));

  @override
  _Coordinate get _value => super._value as _Coordinate;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_Coordinate(
      latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coordinate extends _Coordinate {
  _$_Coordinate(@JsonKey(name: Coordinate.latitudeKey) this.latitude,
      @JsonKey(name: Coordinate.longitudeKey) this.longitude)
      : super._();

  factory _$_Coordinate.fromJson(Map<String, dynamic> json) =>
      _$$_CoordinateFromJson(json);

  @override
  @JsonKey(name: Coordinate.latitudeKey)
  final double latitude;
  @override
  @JsonKey(name: Coordinate.longitudeKey)
  final double longitude;

  @override
  String toString() {
    return 'Coordinate(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Coordinate &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$CoordinateCopyWith<_Coordinate> get copyWith =>
      __$CoordinateCopyWithImpl<_Coordinate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordinateToJson(this);
  }
}

abstract class _Coordinate extends Coordinate {
  factory _Coordinate(@JsonKey(name: Coordinate.latitudeKey) double latitude,
      @JsonKey(name: Coordinate.longitudeKey) double longitude) = _$_Coordinate;
  _Coordinate._() : super._();

  factory _Coordinate.fromJson(Map<String, dynamic> json) =
      _$_Coordinate.fromJson;

  @override
  @JsonKey(name: Coordinate.latitudeKey)
  double get latitude;
  @override
  @JsonKey(name: Coordinate.longitudeKey)
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$CoordinateCopyWith<_Coordinate> get copyWith =>
      throw _privateConstructorUsedError;
}
