// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationPointTearOff {
  const _$LocationPointTearOff();

  _LocationPoint call(
      {required String geoHash, required Coordinate coordinate}) {
    return _LocationPoint(
      geoHash: geoHash,
      coordinate: coordinate,
    );
  }
}

/// @nodoc
const $LocationPoint = _$LocationPointTearOff();

/// @nodoc
mixin _$LocationPoint {
  String get geoHash => throw _privateConstructorUsedError;
  Coordinate get coordinate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationPointCopyWith<LocationPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPointCopyWith<$Res> {
  factory $LocationPointCopyWith(
          LocationPoint value, $Res Function(LocationPoint) then) =
      _$LocationPointCopyWithImpl<$Res>;
  $Res call({String geoHash, Coordinate coordinate});

  $CoordinateCopyWith<$Res> get coordinate;
}

/// @nodoc
class _$LocationPointCopyWithImpl<$Res>
    implements $LocationPointCopyWith<$Res> {
  _$LocationPointCopyWithImpl(this._value, this._then);

  final LocationPoint _value;
  // ignore: unused_field
  final $Res Function(LocationPoint) _then;

  @override
  $Res call({
    Object? geoHash = freezed,
    Object? coordinate = freezed,
  }) {
    return _then(_value.copyWith(
      geoHash: geoHash == freezed
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$LocationPointCopyWith<$Res>
    implements $LocationPointCopyWith<$Res> {
  factory _$LocationPointCopyWith(
          _LocationPoint value, $Res Function(_LocationPoint) then) =
      __$LocationPointCopyWithImpl<$Res>;
  @override
  $Res call({String geoHash, Coordinate coordinate});

  @override
  $CoordinateCopyWith<$Res> get coordinate;
}

/// @nodoc
class __$LocationPointCopyWithImpl<$Res>
    extends _$LocationPointCopyWithImpl<$Res>
    implements _$LocationPointCopyWith<$Res> {
  __$LocationPointCopyWithImpl(
      _LocationPoint _value, $Res Function(_LocationPoint) _then)
      : super(_value, (v) => _then(v as _LocationPoint));

  @override
  _LocationPoint get _value => super._value as _LocationPoint;

  @override
  $Res call({
    Object? geoHash = freezed,
    Object? coordinate = freezed,
  }) {
    return _then(_LocationPoint(
      geoHash: geoHash == freezed
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: coordinate == freezed
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
    ));
  }
}

/// @nodoc

class _$_LocationPoint extends _LocationPoint {
  _$_LocationPoint({required this.geoHash, required this.coordinate})
      : super._();

  @override
  final String geoHash;
  @override
  final Coordinate coordinate;

  @override
  String toString() {
    return 'LocationPoint(geoHash: $geoHash, coordinate: $coordinate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationPoint &&
            const DeepCollectionEquality().equals(other.geoHash, geoHash) &&
            const DeepCollectionEquality()
                .equals(other.coordinate, coordinate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(geoHash),
      const DeepCollectionEquality().hash(coordinate));

  @JsonKey(ignore: true)
  @override
  _$LocationPointCopyWith<_LocationPoint> get copyWith =>
      __$LocationPointCopyWithImpl<_LocationPoint>(this, _$identity);
}

abstract class _LocationPoint extends LocationPoint {
  factory _LocationPoint(
      {required String geoHash,
      required Coordinate coordinate}) = _$_LocationPoint;
  _LocationPoint._() : super._();

  @override
  String get geoHash;
  @override
  Coordinate get coordinate;
  @override
  @JsonKey(ignore: true)
  _$LocationPointCopyWith<_LocationPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
