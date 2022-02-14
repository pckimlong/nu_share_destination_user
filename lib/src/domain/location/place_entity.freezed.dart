// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceEntityTearOff {
  const _$PlaceEntityTearOff();

  _PlaceEntity call(
      {required Coordinate coordinate,
      required String name,
      required String address}) {
    return _PlaceEntity(
      coordinate: coordinate,
      name: name,
      address: address,
    );
  }
}

/// @nodoc
const $PlaceEntity = _$PlaceEntityTearOff();

/// @nodoc
mixin _$PlaceEntity {
  Coordinate get coordinate => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceEntityCopyWith<PlaceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceEntityCopyWith<$Res> {
  factory $PlaceEntityCopyWith(
          PlaceEntity value, $Res Function(PlaceEntity) then) =
      _$PlaceEntityCopyWithImpl<$Res>;
  $Res call({Coordinate coordinate, String name, String address});

  $CoordinateCopyWith<$Res> get coordinate;
}

/// @nodoc
class _$PlaceEntityCopyWithImpl<$Res> implements $PlaceEntityCopyWith<$Res> {
  _$PlaceEntityCopyWithImpl(this._value, this._then);

  final PlaceEntity _value;
  // ignore: unused_field
  final $Res Function(PlaceEntity) _then;

  @override
  $Res call({
    Object? coordinate = freezed,
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      coordinate: coordinate == freezed
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$PlaceEntityCopyWith<$Res>
    implements $PlaceEntityCopyWith<$Res> {
  factory _$PlaceEntityCopyWith(
          _PlaceEntity value, $Res Function(_PlaceEntity) then) =
      __$PlaceEntityCopyWithImpl<$Res>;
  @override
  $Res call({Coordinate coordinate, String name, String address});

  @override
  $CoordinateCopyWith<$Res> get coordinate;
}

/// @nodoc
class __$PlaceEntityCopyWithImpl<$Res> extends _$PlaceEntityCopyWithImpl<$Res>
    implements _$PlaceEntityCopyWith<$Res> {
  __$PlaceEntityCopyWithImpl(
      _PlaceEntity _value, $Res Function(_PlaceEntity) _then)
      : super(_value, (v) => _then(v as _PlaceEntity));

  @override
  _PlaceEntity get _value => super._value as _PlaceEntity;

  @override
  $Res call({
    Object? coordinate = freezed,
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_PlaceEntity(
      coordinate: coordinate == freezed
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlaceEntity implements _PlaceEntity {
  _$_PlaceEntity(
      {required this.coordinate, required this.name, required this.address});

  @override
  final Coordinate coordinate;
  @override
  final String name;
  @override
  final String address;

  @override
  String toString() {
    return 'PlaceEntity(coordinate: $coordinate, name: $name, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceEntity &&
            const DeepCollectionEquality()
                .equals(other.coordinate, coordinate) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(coordinate),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$PlaceEntityCopyWith<_PlaceEntity> get copyWith =>
      __$PlaceEntityCopyWithImpl<_PlaceEntity>(this, _$identity);
}

abstract class _PlaceEntity implements PlaceEntity {
  factory _PlaceEntity(
      {required Coordinate coordinate,
      required String name,
      required String address}) = _$_PlaceEntity;

  @override
  Coordinate get coordinate;
  @override
  String get name;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$PlaceEntityCopyWith<_PlaceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
