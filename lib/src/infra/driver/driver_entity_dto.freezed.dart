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

DriverEntityDto _$DriverEntityDtoFromJson(Map<String, dynamic> json) {
  return _DriverEntityDto.fromJson(json);
}

/// @nodoc
class _$DriverEntityDtoTearOff {
  const _$DriverEntityDtoTearOff();

  _DriverEntityDto call(
      {@JsonKey(name: DriverEntityDto.idKey, ignore: true)
          String? id,
      @JsonKey(name: DriverEntityDto.fullnameKey)
          required String fullname,
      @JsonKey(name: DriverEntityDto.availableKey)
          required bool available,
      @JsonKey(name: DriverEntityDto.locationKey)
          required LocationDetailDto? location,
      @JsonKey(name: DriverEntityDto.vehicleTypeKey)
          required VehicleTypes vehicleType,
      @JsonKey(name: DriverEntityDto.inProgressTripKey)
          required String? inProgressTrip}) {
    return _DriverEntityDto(
      id: id,
      fullname: fullname,
      available: available,
      location: location,
      vehicleType: vehicleType,
      inProgressTrip: inProgressTrip,
    );
  }

  DriverEntityDto fromJson(Map<String, Object?> json) {
    return DriverEntityDto.fromJson(json);
  }
}

/// @nodoc
const $DriverEntityDto = _$DriverEntityDtoTearOff();

/// @nodoc
mixin _$DriverEntityDto {
  @JsonKey(name: DriverEntityDto.idKey, ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: DriverEntityDto.fullnameKey)
  String get fullname => throw _privateConstructorUsedError;
  @JsonKey(name: DriverEntityDto.availableKey)
  bool get available => throw _privateConstructorUsedError;
  @JsonKey(name: DriverEntityDto.locationKey)
  LocationDetailDto? get location => throw _privateConstructorUsedError;
  @JsonKey(name: DriverEntityDto.vehicleTypeKey)
  VehicleTypes get vehicleType => throw _privateConstructorUsedError;
  @JsonKey(name: DriverEntityDto.inProgressTripKey)
  String? get inProgressTrip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverEntityDtoCopyWith<DriverEntityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverEntityDtoCopyWith<$Res> {
  factory $DriverEntityDtoCopyWith(
          DriverEntityDto value, $Res Function(DriverEntityDto) then) =
      _$DriverEntityDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: DriverEntityDto.idKey, ignore: true)
          String? id,
      @JsonKey(name: DriverEntityDto.fullnameKey)
          String fullname,
      @JsonKey(name: DriverEntityDto.availableKey)
          bool available,
      @JsonKey(name: DriverEntityDto.locationKey)
          LocationDetailDto? location,
      @JsonKey(name: DriverEntityDto.vehicleTypeKey)
          VehicleTypes vehicleType,
      @JsonKey(name: DriverEntityDto.inProgressTripKey)
          String? inProgressTrip});

  $LocationDetailDtoCopyWith<$Res>? get location;
}

/// @nodoc
class _$DriverEntityDtoCopyWithImpl<$Res>
    implements $DriverEntityDtoCopyWith<$Res> {
  _$DriverEntityDtoCopyWithImpl(this._value, this._then);

  final DriverEntityDto _value;
  // ignore: unused_field
  final $Res Function(DriverEntityDto) _then;

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
abstract class _$DriverEntityDtoCopyWith<$Res>
    implements $DriverEntityDtoCopyWith<$Res> {
  factory _$DriverEntityDtoCopyWith(
          _DriverEntityDto value, $Res Function(_DriverEntityDto) then) =
      __$DriverEntityDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: DriverEntityDto.idKey, ignore: true)
          String? id,
      @JsonKey(name: DriverEntityDto.fullnameKey)
          String fullname,
      @JsonKey(name: DriverEntityDto.availableKey)
          bool available,
      @JsonKey(name: DriverEntityDto.locationKey)
          LocationDetailDto? location,
      @JsonKey(name: DriverEntityDto.vehicleTypeKey)
          VehicleTypes vehicleType,
      @JsonKey(name: DriverEntityDto.inProgressTripKey)
          String? inProgressTrip});

  @override
  $LocationDetailDtoCopyWith<$Res>? get location;
}

/// @nodoc
class __$DriverEntityDtoCopyWithImpl<$Res>
    extends _$DriverEntityDtoCopyWithImpl<$Res>
    implements _$DriverEntityDtoCopyWith<$Res> {
  __$DriverEntityDtoCopyWithImpl(
      _DriverEntityDto _value, $Res Function(_DriverEntityDto) _then)
      : super(_value, (v) => _then(v as _DriverEntityDto));

  @override
  _DriverEntityDto get _value => super._value as _DriverEntityDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? available = freezed,
    Object? location = freezed,
    Object? vehicleType = freezed,
    Object? inProgressTrip = freezed,
  }) {
    return _then(_DriverEntityDto(
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
class _$_DriverEntityDto extends _DriverEntityDto {
  _$_DriverEntityDto(
      {@JsonKey(name: DriverEntityDto.idKey, ignore: true)
          this.id,
      @JsonKey(name: DriverEntityDto.fullnameKey)
          required this.fullname,
      @JsonKey(name: DriverEntityDto.availableKey)
          required this.available,
      @JsonKey(name: DriverEntityDto.locationKey)
          required this.location,
      @JsonKey(name: DriverEntityDto.vehicleTypeKey)
          required this.vehicleType,
      @JsonKey(name: DriverEntityDto.inProgressTripKey)
          required this.inProgressTrip})
      : super._();

  factory _$_DriverEntityDto.fromJson(Map<String, dynamic> json) =>
      _$$_DriverEntityDtoFromJson(json);

  @override
  @JsonKey(name: DriverEntityDto.idKey, ignore: true)
  final String? id;
  @override
  @JsonKey(name: DriverEntityDto.fullnameKey)
  final String fullname;
  @override
  @JsonKey(name: DriverEntityDto.availableKey)
  final bool available;
  @override
  @JsonKey(name: DriverEntityDto.locationKey)
  final LocationDetailDto? location;
  @override
  @JsonKey(name: DriverEntityDto.vehicleTypeKey)
  final VehicleTypes vehicleType;
  @override
  @JsonKey(name: DriverEntityDto.inProgressTripKey)
  final String? inProgressTrip;

  @override
  String toString() {
    return 'DriverEntityDto(id: $id, fullname: $fullname, available: $available, location: $location, vehicleType: $vehicleType, inProgressTrip: $inProgressTrip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DriverEntityDto &&
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
  _$DriverEntityDtoCopyWith<_DriverEntityDto> get copyWith =>
      __$DriverEntityDtoCopyWithImpl<_DriverEntityDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverEntityDtoToJson(this);
  }
}

abstract class _DriverEntityDto extends DriverEntityDto {
  factory _DriverEntityDto(
      {@JsonKey(name: DriverEntityDto.idKey, ignore: true)
          String? id,
      @JsonKey(name: DriverEntityDto.fullnameKey)
          required String fullname,
      @JsonKey(name: DriverEntityDto.availableKey)
          required bool available,
      @JsonKey(name: DriverEntityDto.locationKey)
          required LocationDetailDto? location,
      @JsonKey(name: DriverEntityDto.vehicleTypeKey)
          required VehicleTypes vehicleType,
      @JsonKey(name: DriverEntityDto.inProgressTripKey)
          required String? inProgressTrip}) = _$_DriverEntityDto;
  _DriverEntityDto._() : super._();

  factory _DriverEntityDto.fromJson(Map<String, dynamic> json) =
      _$_DriverEntityDto.fromJson;

  @override
  @JsonKey(name: DriverEntityDto.idKey, ignore: true)
  String? get id;
  @override
  @JsonKey(name: DriverEntityDto.fullnameKey)
  String get fullname;
  @override
  @JsonKey(name: DriverEntityDto.availableKey)
  bool get available;
  @override
  @JsonKey(name: DriverEntityDto.locationKey)
  LocationDetailDto? get location;
  @override
  @JsonKey(name: DriverEntityDto.vehicleTypeKey)
  VehicleTypes get vehicleType;
  @override
  @JsonKey(name: DriverEntityDto.inProgressTripKey)
  String? get inProgressTrip;
  @override
  @JsonKey(ignore: true)
  _$DriverEntityDtoCopyWith<_DriverEntityDto> get copyWith =>
      throw _privateConstructorUsedError;
}
