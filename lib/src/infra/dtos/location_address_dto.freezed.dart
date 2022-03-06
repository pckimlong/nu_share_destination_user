// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationAddressDto _$LocationAddressDtoFromJson(Map<String, dynamic> json) {
  return _LocationAddressDto.fromJson(json);
}

/// @nodoc
class _$LocationAddressDtoTearOff {
  const _$LocationAddressDtoTearOff();

  _LocationAddressDto call(
      {@JsonKey(name: LocationAddressDto.addressKey)
          required String address,
      @JsonKey(name: LocationAddressDto.locationPointKey, toJson: LocationAddressDto._geoPointToJson, fromJson: LocationAddressDto._geoPointFromJson)
          required GeoFirePoint locationPoint,
      @JsonKey(name: LocationAddressDto.timeKey)
          required DateTime? time}) {
    return _LocationAddressDto(
      address: address,
      locationPoint: locationPoint,
      time: time,
    );
  }

  LocationAddressDto fromJson(Map<String, Object?> json) {
    return LocationAddressDto.fromJson(json);
  }
}

/// @nodoc
const $LocationAddressDto = _$LocationAddressDtoTearOff();

/// @nodoc
mixin _$LocationAddressDto {
  @JsonKey(name: LocationAddressDto.addressKey)
  String get address => throw _privateConstructorUsedError;
  @JsonKey(
      name: LocationAddressDto.locationPointKey,
      toJson: LocationAddressDto._geoPointToJson,
      fromJson: LocationAddressDto._geoPointFromJson)
  GeoFirePoint get locationPoint => throw _privateConstructorUsedError;
  @JsonKey(name: LocationAddressDto.timeKey)
  DateTime? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationAddressDtoCopyWith<LocationAddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationAddressDtoCopyWith<$Res> {
  factory $LocationAddressDtoCopyWith(
          LocationAddressDto value, $Res Function(LocationAddressDto) then) =
      _$LocationAddressDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: LocationAddressDto.addressKey)
          String address,
      @JsonKey(name: LocationAddressDto.locationPointKey, toJson: LocationAddressDto._geoPointToJson, fromJson: LocationAddressDto._geoPointFromJson)
          GeoFirePoint locationPoint,
      @JsonKey(name: LocationAddressDto.timeKey)
          DateTime? time});
}

/// @nodoc
class _$LocationAddressDtoCopyWithImpl<$Res>
    implements $LocationAddressDtoCopyWith<$Res> {
  _$LocationAddressDtoCopyWithImpl(this._value, this._then);

  final LocationAddressDto _value;
  // ignore: unused_field
  final $Res Function(LocationAddressDto) _then;

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
              as GeoFirePoint,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$LocationAddressDtoCopyWith<$Res>
    implements $LocationAddressDtoCopyWith<$Res> {
  factory _$LocationAddressDtoCopyWith(
          _LocationAddressDto value, $Res Function(_LocationAddressDto) then) =
      __$LocationAddressDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: LocationAddressDto.addressKey)
          String address,
      @JsonKey(name: LocationAddressDto.locationPointKey, toJson: LocationAddressDto._geoPointToJson, fromJson: LocationAddressDto._geoPointFromJson)
          GeoFirePoint locationPoint,
      @JsonKey(name: LocationAddressDto.timeKey)
          DateTime? time});
}

/// @nodoc
class __$LocationAddressDtoCopyWithImpl<$Res>
    extends _$LocationAddressDtoCopyWithImpl<$Res>
    implements _$LocationAddressDtoCopyWith<$Res> {
  __$LocationAddressDtoCopyWithImpl(
      _LocationAddressDto _value, $Res Function(_LocationAddressDto) _then)
      : super(_value, (v) => _then(v as _LocationAddressDto));

  @override
  _LocationAddressDto get _value => super._value as _LocationAddressDto;

  @override
  $Res call({
    Object? address = freezed,
    Object? locationPoint = freezed,
    Object? time = freezed,
  }) {
    return _then(_LocationAddressDto(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      locationPoint: locationPoint == freezed
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as GeoFirePoint,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationAddressDto extends _LocationAddressDto {
  _$_LocationAddressDto(
      {@JsonKey(name: LocationAddressDto.addressKey)
          required this.address,
      @JsonKey(name: LocationAddressDto.locationPointKey, toJson: LocationAddressDto._geoPointToJson, fromJson: LocationAddressDto._geoPointFromJson)
          required this.locationPoint,
      @JsonKey(name: LocationAddressDto.timeKey)
          required this.time})
      : super._();

  factory _$_LocationAddressDto.fromJson(Map<String, dynamic> json) =>
      _$$_LocationAddressDtoFromJson(json);

  @override
  @JsonKey(name: LocationAddressDto.addressKey)
  final String address;
  @override
  @JsonKey(
      name: LocationAddressDto.locationPointKey,
      toJson: LocationAddressDto._geoPointToJson,
      fromJson: LocationAddressDto._geoPointFromJson)
  final GeoFirePoint locationPoint;
  @override
  @JsonKey(name: LocationAddressDto.timeKey)
  final DateTime? time;

  @override
  String toString() {
    return 'LocationAddressDto(address: $address, locationPoint: $locationPoint, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationAddressDto &&
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
  _$LocationAddressDtoCopyWith<_LocationAddressDto> get copyWith =>
      __$LocationAddressDtoCopyWithImpl<_LocationAddressDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationAddressDtoToJson(this);
  }
}

abstract class _LocationAddressDto extends LocationAddressDto {
  factory _LocationAddressDto(
      {@JsonKey(name: LocationAddressDto.addressKey)
          required String address,
      @JsonKey(name: LocationAddressDto.locationPointKey, toJson: LocationAddressDto._geoPointToJson, fromJson: LocationAddressDto._geoPointFromJson)
          required GeoFirePoint locationPoint,
      @JsonKey(name: LocationAddressDto.timeKey)
          required DateTime? time}) = _$_LocationAddressDto;
  _LocationAddressDto._() : super._();

  factory _LocationAddressDto.fromJson(Map<String, dynamic> json) =
      _$_LocationAddressDto.fromJson;

  @override
  @JsonKey(name: LocationAddressDto.addressKey)
  String get address;
  @override
  @JsonKey(
      name: LocationAddressDto.locationPointKey,
      toJson: LocationAddressDto._geoPointToJson,
      fromJson: LocationAddressDto._geoPointFromJson)
  GeoFirePoint get locationPoint;
  @override
  @JsonKey(name: LocationAddressDto.timeKey)
  DateTime? get time;
  @override
  @JsonKey(ignore: true)
  _$LocationAddressDtoCopyWith<_LocationAddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}
