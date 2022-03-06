// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'driver_entity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverDto _$DriverDtoFromJson(Map<String, dynamic> json) {
  return _DriverDto.fromJson(json);
}

/// @nodoc
class _$DriverDtoTearOff {
  const _$DriverDtoTearOff();

  _DriverDto call(
      {@JsonKey(name: DriverDto.idKey, ignore: true)
          String? id,
      @JsonKey(name: DriverDto.fullnameKey)
          required String fullname,
      @JsonKey(name: DriverDto.availableKey)
          required bool available,
      @JsonKey(name: DriverDto.locationKey)
          required LocationDetailDto? location,
      @JsonKey(name: DriverDto.vehicleTypeKey)
          required VehicleTypes vehicleType,
      @JsonKey(name: DriverDto.inProgressTripKey)
          required String? inProgressTrip}) {
    return _DriverDto(
      id: id,
      fullname: fullname,
      available: available,
      location: location,
      vehicleType: vehicleType,
      inProgressTrip: inProgressTrip,
    );
  }

  DriverDto fromJson(Map<String, Object?> json) {
    return DriverDto.fromJson(json);
  }
}

/// @nodoc
const $DriverDto = _$DriverDtoTearOff();

/// @nodoc
mixin _$DriverDto {
  @JsonKey(name: DriverDto.idKey, ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: DriverDto.fullnameKey)
  String get fullname => throw _privateConstructorUsedError;
  @JsonKey(name: DriverDto.availableKey)
  bool get available => throw _privateConstructorUsedError;
  @JsonKey(name: DriverDto.locationKey)
  LocationDetailDto? get location => throw _privateConstructorUsedError;
  @JsonKey(name: DriverDto.vehicleTypeKey)
  VehicleTypes get vehicleType => throw _privateConstructorUsedError;
  @JsonKey(name: DriverDto.inProgressTripKey)
  String? get inProgressTrip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverDtoCopyWith<DriverDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverDtoCopyWith<$Res> {
  factory $DriverDtoCopyWith(DriverDto value, $Res Function(DriverDto) then) =
      _$DriverDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: DriverDto.idKey, ignore: true) String? id,
      @JsonKey(name: DriverDto.fullnameKey) String fullname,
      @JsonKey(name: DriverDto.availableKey) bool available,
      @JsonKey(name: DriverDto.locationKey) LocationDetailDto? location,
      @JsonKey(name: DriverDto.vehicleTypeKey) VehicleTypes vehicleType,
      @JsonKey(name: DriverDto.inProgressTripKey) String? inProgressTrip});

  $LocationDetailDtoCopyWith<$Res>? get location;
}

/// @nodoc
class _$DriverDtoCopyWithImpl<$Res> implements $DriverDtoCopyWith<$Res> {
  _$DriverDtoCopyWithImpl(this._value, this._then);

  final DriverDto _value;
  // ignore: unused_field
  final $Res Function(DriverDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? available = freezed,
    Object? location = freezed,
    Object? vehicleType = freezed,
    Object? inProgressTrip = freezed,
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
      available: available == freezed
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDetailDto?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleTypes,
      inProgressTrip: inProgressTrip == freezed
          ? _value.inProgressTrip
          : inProgressTrip // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $LocationDetailDtoCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationDetailDtoCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$DriverDtoCopyWith<$Res> implements $DriverDtoCopyWith<$Res> {
  factory _$DriverDtoCopyWith(
          _DriverDto value, $Res Function(_DriverDto) then) =
      __$DriverDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: DriverDto.idKey, ignore: true) String? id,
      @JsonKey(name: DriverDto.fullnameKey) String fullname,
      @JsonKey(name: DriverDto.availableKey) bool available,
      @JsonKey(name: DriverDto.locationKey) LocationDetailDto? location,
      @JsonKey(name: DriverDto.vehicleTypeKey) VehicleTypes vehicleType,
      @JsonKey(name: DriverDto.inProgressTripKey) String? inProgressTrip});

  @override
  $LocationDetailDtoCopyWith<$Res>? get location;
}

/// @nodoc
class __$DriverDtoCopyWithImpl<$Res> extends _$DriverDtoCopyWithImpl<$Res>
    implements _$DriverDtoCopyWith<$Res> {
  __$DriverDtoCopyWithImpl(_DriverDto _value, $Res Function(_DriverDto) _then)
      : super(_value, (v) => _then(v as _DriverDto));

  @override
  _DriverDto get _value => super._value as _DriverDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? available = freezed,
    Object? location = freezed,
    Object? vehicleType = freezed,
    Object? inProgressTrip = freezed,
  }) {
    return _then(_DriverDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      available: available == freezed
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDetailDto?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleTypes,
      inProgressTrip: inProgressTrip == freezed
          ? _value.inProgressTrip
          : inProgressTrip // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverDto extends _DriverDto {
  _$_DriverDto(
      {@JsonKey(name: DriverDto.idKey, ignore: true) this.id,
      @JsonKey(name: DriverDto.fullnameKey) required this.fullname,
      @JsonKey(name: DriverDto.availableKey) required this.available,
      @JsonKey(name: DriverDto.locationKey) required this.location,
      @JsonKey(name: DriverDto.vehicleTypeKey) required this.vehicleType,
      @JsonKey(name: DriverDto.inProgressTripKey) required this.inProgressTrip})
      : super._();

  factory _$_DriverDto.fromJson(Map<String, dynamic> json) =>
      _$$_DriverDtoFromJson(json);

  @override
  @JsonKey(name: DriverDto.idKey, ignore: true)
  final String? id;
  @override
  @JsonKey(name: DriverDto.fullnameKey)
  final String fullname;
  @override
  @JsonKey(name: DriverDto.availableKey)
  final bool available;
  @override
  @JsonKey(name: DriverDto.locationKey)
  final LocationDetailDto? location;
  @override
  @JsonKey(name: DriverDto.vehicleTypeKey)
  final VehicleTypes vehicleType;
  @override
  @JsonKey(name: DriverDto.inProgressTripKey)
  final String? inProgressTrip;

  @override
  String toString() {
    return 'DriverDto(id: $id, fullname: $fullname, available: $available, location: $location, vehicleType: $vehicleType, inProgressTrip: $inProgressTrip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DriverDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.fullname, fullname) &&
            const DeepCollectionEquality().equals(other.available, available) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.vehicleType, vehicleType) &&
            const DeepCollectionEquality()
                .equals(other.inProgressTrip, inProgressTrip));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(fullname),
      const DeepCollectionEquality().hash(available),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(vehicleType),
      const DeepCollectionEquality().hash(inProgressTrip));

  @JsonKey(ignore: true)
  @override
  _$DriverDtoCopyWith<_DriverDto> get copyWith =>
      __$DriverDtoCopyWithImpl<_DriverDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverDtoToJson(this);
  }
}

abstract class _DriverDto extends DriverDto {
  factory _DriverDto(
      {@JsonKey(name: DriverDto.idKey, ignore: true)
          String? id,
      @JsonKey(name: DriverDto.fullnameKey)
          required String fullname,
      @JsonKey(name: DriverDto.availableKey)
          required bool available,
      @JsonKey(name: DriverDto.locationKey)
          required LocationDetailDto? location,
      @JsonKey(name: DriverDto.vehicleTypeKey)
          required VehicleTypes vehicleType,
      @JsonKey(name: DriverDto.inProgressTripKey)
          required String? inProgressTrip}) = _$_DriverDto;
  _DriverDto._() : super._();

  factory _DriverDto.fromJson(Map<String, dynamic> json) =
      _$_DriverDto.fromJson;

  @override
  @JsonKey(name: DriverDto.idKey, ignore: true)
  String? get id;
  @override
  @JsonKey(name: DriverDto.fullnameKey)
  String get fullname;
  @override
  @JsonKey(name: DriverDto.availableKey)
  bool get available;
  @override
  @JsonKey(name: DriverDto.locationKey)
  LocationDetailDto? get location;
  @override
  @JsonKey(name: DriverDto.vehicleTypeKey)
  VehicleTypes get vehicleType;
  @override
  @JsonKey(name: DriverDto.inProgressTripKey)
  String? get inProgressTrip;
  @override
  @JsonKey(ignore: true)
  _$DriverDtoCopyWith<_DriverDto> get copyWith =>
      throw _privateConstructorUsedError;
}
