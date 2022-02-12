// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'driver_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DriverEntityTearOff {
  const _$DriverEntityTearOff();

  _DriverEntity call(
      {required String? id,
      required String fullname,
      required bool visible,
      required LocationDetail location,
      required VehicleTypes vehicleType}) {
    return _DriverEntity(
      id: id,
      fullname: fullname,
      visible: visible,
      location: location,
      vehicleType: vehicleType,
    );
  }
}

/// @nodoc
const $DriverEntity = _$DriverEntityTearOff();

/// @nodoc
mixin _$DriverEntity {
  String? get id => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;

  /// Make driver visible to map or not
  bool get visible => throw _privateConstructorUsedError;
  LocationDetail get location => throw _privateConstructorUsedError;
  VehicleTypes get vehicleType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriverEntityCopyWith<DriverEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverEntityCopyWith<$Res> {
  factory $DriverEntityCopyWith(
          DriverEntity value, $Res Function(DriverEntity) then) =
      _$DriverEntityCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String fullname,
      bool visible,
      LocationDetail location,
      VehicleTypes vehicleType});

  $LocationDetailCopyWith<$Res> get location;
}

/// @nodoc
class _$DriverEntityCopyWithImpl<$Res> implements $DriverEntityCopyWith<$Res> {
  _$DriverEntityCopyWithImpl(this._value, this._then);

  final DriverEntity _value;
  // ignore: unused_field
  final $Res Function(DriverEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? visible = freezed,
    Object? location = freezed,
    Object? vehicleType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDetail,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleTypes,
    ));
  }

  @override
  $LocationDetailCopyWith<$Res> get location {
    return $LocationDetailCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$DriverEntityCopyWith<$Res>
    implements $DriverEntityCopyWith<$Res> {
  factory _$DriverEntityCopyWith(
          _DriverEntity value, $Res Function(_DriverEntity) then) =
      __$DriverEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String fullname,
      bool visible,
      LocationDetail location,
      VehicleTypes vehicleType});

  @override
  $LocationDetailCopyWith<$Res> get location;
}

/// @nodoc
class __$DriverEntityCopyWithImpl<$Res> extends _$DriverEntityCopyWithImpl<$Res>
    implements _$DriverEntityCopyWith<$Res> {
  __$DriverEntityCopyWithImpl(
      _DriverEntity _value, $Res Function(_DriverEntity) _then)
      : super(_value, (v) => _then(v as _DriverEntity));

  @override
  _DriverEntity get _value => super._value as _DriverEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? visible = freezed,
    Object? location = freezed,
    Object? vehicleType = freezed,
  }) {
    return _then(_DriverEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDetail,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleTypes,
    ));
  }
}

/// @nodoc

class _$_DriverEntity implements _DriverEntity {
  _$_DriverEntity(
      {required this.id,
      required this.fullname,
      required this.visible,
      required this.location,
      required this.vehicleType});

  @override
  final String? id;
  @override
  final String fullname;
  @override

  /// Make driver visible to map or not
  final bool visible;
  @override
  final LocationDetail location;
  @override
  final VehicleTypes vehicleType;

  @override
  String toString() {
    return 'DriverEntity(id: $id, fullname: $fullname, visible: $visible, location: $location, vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DriverEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.fullname, fullname) &&
            const DeepCollectionEquality().equals(other.visible, visible) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.vehicleType, vehicleType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(fullname),
      const DeepCollectionEquality().hash(visible),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(vehicleType));

  @JsonKey(ignore: true)
  @override
  _$DriverEntityCopyWith<_DriverEntity> get copyWith =>
      __$DriverEntityCopyWithImpl<_DriverEntity>(this, _$identity);
}

abstract class _DriverEntity implements DriverEntity {
  factory _DriverEntity(
      {required String? id,
      required String fullname,
      required bool visible,
      required LocationDetail location,
      required VehicleTypes vehicleType}) = _$_DriverEntity;

  @override
  String? get id;
  @override
  String get fullname;
  @override

  /// Make driver visible to map or not
  bool get visible;
  @override
  LocationDetail get location;
  @override
  VehicleTypes get vehicleType;
  @override
  @JsonKey(ignore: true)
  _$DriverEntityCopyWith<_DriverEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
