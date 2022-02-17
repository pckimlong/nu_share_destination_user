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

LocationAddress _$LocationAddressFromJson(Map<String, dynamic> json) {
  return _LocationPointDetail.fromJson(json);
}

/// @nodoc
class _$LocationAddressTearOff {
  const _$LocationAddressTearOff();

  _LocationPointDetail call(
      {@JsonKey(name: LocationAddress.addressKey)
          required String address,
      @JsonKey(name: LocationAddress.locationPointKey)
          required LocationPoint locationPoint,
      @JsonKey(name: LocationAddress.timeKey)
          required DateTime? time}) {
    return _LocationPointDetail(
      address: address,
      locationPoint: locationPoint,
      time: time,
    );
  }

  LocationAddress fromJson(Map<String, Object?> json) {
    return LocationAddress.fromJson(json);
  }
}

/// @nodoc
const $LocationAddress = _$LocationAddressTearOff();

/// @nodoc
mixin _$LocationAddress {
  /// Name of place, like Phnom Penh...
  @JsonKey(name: LocationAddress.addressKey)
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: LocationAddress.locationPointKey)
  LocationPoint get locationPoint => throw _privateConstructorUsedError;

  /// Time at this location
  @JsonKey(name: LocationAddress.timeKey)
  DateTime? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationAddressCopyWith<LocationAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationAddressCopyWith<$Res> {
  factory $LocationAddressCopyWith(
          LocationAddress value, $Res Function(LocationAddress) then) =
      _$LocationAddressCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: LocationAddress.addressKey)
          String address,
      @JsonKey(name: LocationAddress.locationPointKey)
          LocationPoint locationPoint,
      @JsonKey(name: LocationAddress.timeKey)
          DateTime? time});

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
  $Res call(
      {@JsonKey(name: LocationAddress.addressKey)
          String address,
      @JsonKey(name: LocationAddress.locationPointKey)
          LocationPoint locationPoint,
      @JsonKey(name: LocationAddress.timeKey)
          DateTime? time});

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
@JsonSerializable()
class _$_LocationPointDetail extends _LocationPointDetail {
  _$_LocationPointDetail(
      {@JsonKey(name: LocationAddress.addressKey)
          required this.address,
      @JsonKey(name: LocationAddress.locationPointKey)
          required this.locationPoint,
      @JsonKey(name: LocationAddress.timeKey)
          required this.time})
      : super._();

  factory _$_LocationPointDetail.fromJson(Map<String, dynamic> json) =>
      _$$_LocationPointDetailFromJson(json);

  @override

  /// Name of place, like Phnom Penh...
  @JsonKey(name: LocationAddress.addressKey)
  final String address;
  @override
  @JsonKey(name: LocationAddress.locationPointKey)
  final LocationPoint locationPoint;
  @override

  /// Time at this location
  @JsonKey(name: LocationAddress.timeKey)
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

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationPointDetailToJson(this);
  }
}

abstract class _LocationPointDetail extends LocationAddress {
  factory _LocationPointDetail(
      {@JsonKey(name: LocationAddress.addressKey)
          required String address,
      @JsonKey(name: LocationAddress.locationPointKey)
          required LocationPoint locationPoint,
      @JsonKey(name: LocationAddress.timeKey)
          required DateTime? time}) = _$_LocationPointDetail;
  _LocationPointDetail._() : super._();

  factory _LocationPointDetail.fromJson(Map<String, dynamic> json) =
      _$_LocationPointDetail.fromJson;

  @override

  /// Name of place, like Phnom Penh...
  @JsonKey(name: LocationAddress.addressKey)
  String get address;
  @override
  @JsonKey(name: LocationAddress.locationPointKey)
  LocationPoint get locationPoint;
  @override

  /// Time at this location
  @JsonKey(name: LocationAddress.timeKey)
  DateTime? get time;
  @override
  @JsonKey(ignore: true)
  _$LocationPointDetailCopyWith<_LocationPointDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
