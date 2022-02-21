// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationAddressTearOff {
  const _$LocationAddressTearOff();

  _LocationPointDetail call(
      {required String address,
      required LocationPoint locationPoint,
      required DateTime? time}) {
    return _LocationPointDetail(
      address: address,
      locationPoint: locationPoint,
      time: time,
    );
  }
}

/// @nodoc
const $LocationAddress = _$LocationAddressTearOff();

/// @nodoc
mixin _$LocationAddress {
  /// Name of place, like Phnom Penh...
  String get address => throw _privateConstructorUsedError;
  LocationPoint get locationPoint => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationAddressCopyWith<LocationAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationAddressCopyWith<$Res> {
  factory $LocationAddressCopyWith(
          LocationAddress value, $Res Function(LocationAddress) then) =
      _$LocationAddressCopyWithImpl<$Res>;
  $Res call({String address, LocationPoint locationPoint, DateTime? time});

  $LocationPointCopyWith<$Res> get locationPoint;
}

/// @nodoc
class _$LocationAddressCopyWithImpl<$Res>
    implements $LocationAddressCopyWith<$Res> {
  _$LocationAddressCopyWithImpl(this._value, this._then);

  final LocationAddress _value;
  // ignore: unused_field
  final $Res Function(LocationAddress) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? locationPoint = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      locationPoint: locationPoint == freezed
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as LocationPoint,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $LocationPointCopyWith<$Res> get locationPoint {
    return $LocationPointCopyWith<$Res>(_value.locationPoint, (value) {
      return _then(_value.copyWith(locationPoint: value));
    });
  }
}

/// @nodoc
abstract class _$LocationPointDetailCopyWith<$Res>
    implements $LocationAddressCopyWith<$Res> {
  factory _$LocationPointDetailCopyWith(_LocationPointDetail value,
          $Res Function(_LocationPointDetail) then) =
      __$LocationPointDetailCopyWithImpl<$Res>;
  @override
  $Res call({String address, LocationPoint locationPoint, DateTime? time});

  @override
  $LocationPointCopyWith<$Res> get locationPoint;
}

/// @nodoc
class __$LocationPointDetailCopyWithImpl<$Res>
    extends _$LocationAddressCopyWithImpl<$Res>
    implements _$LocationPointDetailCopyWith<$Res> {
  __$LocationPointDetailCopyWithImpl(
      _LocationPointDetail _value, $Res Function(_LocationPointDetail) _then)
      : super(_value, (v) => _then(v as _LocationPointDetail));

  @override
  _LocationPointDetail get _value => super._value as _LocationPointDetail;

  @override
  $Res call({
    Object? address = freezed,
    Object? locationPoint = freezed,
    Object? time = freezed,
  }) {
    return _then(_LocationPointDetail(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      locationPoint: locationPoint == freezed
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as LocationPoint,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_LocationPointDetail extends _LocationPointDetail {
  _$_LocationPointDetail(
      {required this.address, required this.locationPoint, required this.time})
      : super._();

  @override

  /// Name of place, like Phnom Penh...
  final String address;
  @override
  final LocationPoint locationPoint;
  @override
  final DateTime? time;

  @override
  String toString() {
    return 'LocationAddress(address: $address, locationPoint: $locationPoint, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationPointDetail &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.locationPoint, locationPoint) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(locationPoint),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$LocationPointDetailCopyWith<_LocationPointDetail> get copyWith =>
      __$LocationPointDetailCopyWithImpl<_LocationPointDetail>(
          this, _$identity);
}

abstract class _LocationPointDetail extends LocationAddress {
  factory _LocationPointDetail(
      {required String address,
      required LocationPoint locationPoint,
      required DateTime? time}) = _$_LocationPointDetail;
  _LocationPointDetail._() : super._();

  @override

  /// Name of place, like Phnom Penh...
  String get address;
  @override
  LocationPoint get locationPoint;
  @override
  DateTime? get time;
  @override
  @JsonKey(ignore: true)
  _$LocationPointDetailCopyWith<_LocationPointDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
