// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'passenger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PassengerDto _$PassengerDtoFromJson(Map<String, dynamic> json) {
  return _Passenger.fromJson(json);
}

/// @nodoc
class _$PassengerDtoTearOff {
  const _$PassengerDtoTearOff();

  _Passenger call(
      {required UserDto user,
      required String note,
      required bool allowToShare,
      required LocationAddressDto originLocation,
      required LocationAddressDto? destinationLocation,
      required LocationAddressDto? actualDestinationLocation}) {
    return _Passenger(
      user: user,
      note: note,
      allowToShare: allowToShare,
      originLocation: originLocation,
      destinationLocation: destinationLocation,
      actualDestinationLocation: actualDestinationLocation,
    );
  }

  PassengerDto fromJson(Map<String, Object?> json) {
    return PassengerDto.fromJson(json);
  }
}

/// @nodoc
const $PassengerDto = _$PassengerDtoTearOff();

/// @nodoc
mixin _$PassengerDto {
  UserDto get user => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  bool get allowToShare => throw _privateConstructorUsedError;
  LocationAddressDto get originLocation => throw _privateConstructorUsedError;
  LocationAddressDto? get destinationLocation =>
      throw _privateConstructorUsedError;
  LocationAddressDto? get actualDestinationLocation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassengerDtoCopyWith<PassengerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassengerDtoCopyWith<$Res> {
  factory $PassengerDtoCopyWith(
          PassengerDto value, $Res Function(PassengerDto) then) =
      _$PassengerDtoCopyWithImpl<$Res>;
  $Res call(
      {UserDto user,
      String note,
      bool allowToShare,
      LocationAddressDto originLocation,
      LocationAddressDto? destinationLocation,
      LocationAddressDto? actualDestinationLocation});
}

/// @nodoc
class _$PassengerDtoCopyWithImpl<$Res> implements $PassengerDtoCopyWith<$Res> {
  _$PassengerDtoCopyWithImpl(this._value, this._then);

  final PassengerDto _value;
  // ignore: unused_field
  final $Res Function(PassengerDto) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? note = freezed,
    Object? allowToShare = freezed,
    Object? originLocation = freezed,
    Object? destinationLocation = freezed,
    Object? actualDestinationLocation = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      allowToShare: allowToShare == freezed
          ? _value.allowToShare
          : allowToShare // ignore: cast_nullable_to_non_nullable
              as bool,
      originLocation: originLocation == freezed
          ? _value.originLocation
          : originLocation // ignore: cast_nullable_to_non_nullable
              as LocationAddressDto,
      destinationLocation: destinationLocation == freezed
          ? _value.destinationLocation
          : destinationLocation // ignore: cast_nullable_to_non_nullable
              as LocationAddressDto?,
      actualDestinationLocation: actualDestinationLocation == freezed
          ? _value.actualDestinationLocation
          : actualDestinationLocation // ignore: cast_nullable_to_non_nullable
              as LocationAddressDto?,
    ));
  }
}

/// @nodoc
abstract class _$PassengerCopyWith<$Res>
    implements $PassengerDtoCopyWith<$Res> {
  factory _$PassengerCopyWith(
          _Passenger value, $Res Function(_Passenger) then) =
      __$PassengerCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserDto user,
      String note,
      bool allowToShare,
      LocationAddressDto originLocation,
      LocationAddressDto? destinationLocation,
      LocationAddressDto? actualDestinationLocation});
}

/// @nodoc
class __$PassengerCopyWithImpl<$Res> extends _$PassengerDtoCopyWithImpl<$Res>
    implements _$PassengerCopyWith<$Res> {
  __$PassengerCopyWithImpl(_Passenger _value, $Res Function(_Passenger) _then)
      : super(_value, (v) => _then(v as _Passenger));

  @override
  _Passenger get _value => super._value as _Passenger;

  @override
  $Res call({
    Object? user = freezed,
    Object? note = freezed,
    Object? allowToShare = freezed,
    Object? originLocation = freezed,
    Object? destinationLocation = freezed,
    Object? actualDestinationLocation = freezed,
  }) {
    return _then(_Passenger(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      allowToShare: allowToShare == freezed
          ? _value.allowToShare
          : allowToShare // ignore: cast_nullable_to_non_nullable
              as bool,
      originLocation: originLocation == freezed
          ? _value.originLocation
          : originLocation // ignore: cast_nullable_to_non_nullable
              as LocationAddressDto,
      destinationLocation: destinationLocation == freezed
          ? _value.destinationLocation
          : destinationLocation // ignore: cast_nullable_to_non_nullable
              as LocationAddressDto?,
      actualDestinationLocation: actualDestinationLocation == freezed
          ? _value.actualDestinationLocation
          : actualDestinationLocation // ignore: cast_nullable_to_non_nullable
              as LocationAddressDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Passenger extends _Passenger {
  _$_Passenger(
      {required this.user,
      required this.note,
      required this.allowToShare,
      required this.originLocation,
      required this.destinationLocation,
      required this.actualDestinationLocation})
      : super._();

  factory _$_Passenger.fromJson(Map<String, dynamic> json) =>
      _$$_PassengerFromJson(json);

  @override
  final UserDto user;
  @override
  final String note;
  @override
  final bool allowToShare;
  @override
  final LocationAddressDto originLocation;
  @override
  final LocationAddressDto? destinationLocation;
  @override
  final LocationAddressDto? actualDestinationLocation;

  @override
  String toString() {
    return 'PassengerDto(user: $user, note: $note, allowToShare: $allowToShare, originLocation: $originLocation, destinationLocation: $destinationLocation, actualDestinationLocation: $actualDestinationLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Passenger &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality()
                .equals(other.allowToShare, allowToShare) &&
            const DeepCollectionEquality()
                .equals(other.originLocation, originLocation) &&
            const DeepCollectionEquality()
                .equals(other.destinationLocation, destinationLocation) &&
            const DeepCollectionEquality().equals(
                other.actualDestinationLocation, actualDestinationLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(allowToShare),
      const DeepCollectionEquality().hash(originLocation),
      const DeepCollectionEquality().hash(destinationLocation),
      const DeepCollectionEquality().hash(actualDestinationLocation));

  @JsonKey(ignore: true)
  @override
  _$PassengerCopyWith<_Passenger> get copyWith =>
      __$PassengerCopyWithImpl<_Passenger>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PassengerToJson(this);
  }
}

abstract class _Passenger extends PassengerDto {
  factory _Passenger(
      {required UserDto user,
      required String note,
      required bool allowToShare,
      required LocationAddressDto originLocation,
      required LocationAddressDto? destinationLocation,
      required LocationAddressDto? actualDestinationLocation}) = _$_Passenger;
  _Passenger._() : super._();

  factory _Passenger.fromJson(Map<String, dynamic> json) =
      _$_Passenger.fromJson;

  @override
  UserDto get user;
  @override
  String get note;
  @override
  bool get allowToShare;
  @override
  LocationAddressDto get originLocation;
  @override
  LocationAddressDto? get destinationLocation;
  @override
  LocationAddressDto? get actualDestinationLocation;
  @override
  @JsonKey(ignore: true)
  _$PassengerCopyWith<_Passenger> get copyWith =>
      throw _privateConstructorUsedError;
}
