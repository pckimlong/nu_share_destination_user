// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip_entity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TripEntityDto _$TripEntityDtoFromJson(Map<String, dynamic> json) {
  return _TripEntityDto.fromJson(json);
}

/// @nodoc
class _$TripEntityDtoTearOff {
  const _$TripEntityDtoTearOff();

  _TripEntityDto call(
      {@JsonKey(name: TripEntityDto.idKey, ignore: true)
          String? id,
      @JsonKey(name: TripEntityDto.statusKey, toJson: TripEntityDto._statusToJson, fromJson: TripEntityDto._statusFromJson)
          required TripStatus status,
      @JsonKey(name: TripEntityDto.passenger1Key)
          required PassengerEntityDto passenger1,
      @JsonKey(name: TripEntityDto.passenger2Key)
          required PassengerEntityDto? passenger2,
      @JsonKey(name: TripEntityDto.driverIdKey)
          required String? driverId,
      @JsonKey(name: TripEntityDto.startedTimeKey)
          required DateTime? startedTime,
      @JsonKey(name: TripEntityDto.endedTimeKey)
          required DateTime? endedTime}) {
    return _TripEntityDto(
      id: id,
      status: status,
      passenger1: passenger1,
      passenger2: passenger2,
      driverId: driverId,
      startedTime: startedTime,
      endedTime: endedTime,
    );
  }

  TripEntityDto fromJson(Map<String, Object?> json) {
    return TripEntityDto.fromJson(json);
  }
}

/// @nodoc
const $TripEntityDto = _$TripEntityDtoTearOff();

/// @nodoc
mixin _$TripEntityDto {
  @JsonKey(name: TripEntityDto.idKey, ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(
      name: TripEntityDto.statusKey,
      toJson: TripEntityDto._statusToJson,
      fromJson: TripEntityDto._statusFromJson)
  TripStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: TripEntityDto.passenger1Key)
  PassengerEntityDto get passenger1 => throw _privateConstructorUsedError;
  @JsonKey(name: TripEntityDto.passenger2Key)
  PassengerEntityDto? get passenger2 => throw _privateConstructorUsedError;
  @JsonKey(name: TripEntityDto.driverIdKey)
  String? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: TripEntityDto.startedTimeKey)
  DateTime? get startedTime => throw _privateConstructorUsedError;
  @JsonKey(name: TripEntityDto.endedTimeKey)
  DateTime? get endedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripEntityDtoCopyWith<TripEntityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripEntityDtoCopyWith<$Res> {
  factory $TripEntityDtoCopyWith(
          TripEntityDto value, $Res Function(TripEntityDto) then) =
      _$TripEntityDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: TripEntityDto.idKey, ignore: true)
          String? id,
      @JsonKey(name: TripEntityDto.statusKey, toJson: TripEntityDto._statusToJson, fromJson: TripEntityDto._statusFromJson)
          TripStatus status,
      @JsonKey(name: TripEntityDto.passenger1Key)
          PassengerEntityDto passenger1,
      @JsonKey(name: TripEntityDto.passenger2Key)
          PassengerEntityDto? passenger2,
      @JsonKey(name: TripEntityDto.driverIdKey)
          String? driverId,
      @JsonKey(name: TripEntityDto.startedTimeKey)
          DateTime? startedTime,
      @JsonKey(name: TripEntityDto.endedTimeKey)
          DateTime? endedTime});

  $TripStatusCopyWith<$Res> get status;
  $PassengerEntityDtoCopyWith<$Res> get passenger1;
  $PassengerEntityDtoCopyWith<$Res>? get passenger2;
}

/// @nodoc
class _$TripEntityDtoCopyWithImpl<$Res>
    implements $TripEntityDtoCopyWith<$Res> {
  _$TripEntityDtoCopyWithImpl(this._value, this._then);

  final TripEntityDto _value;
  // ignore: unused_field
  final $Res Function(TripEntityDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? passenger1 = freezed,
    Object? passenger2 = freezed,
    Object? driverId = freezed,
    Object? startedTime = freezed,
    Object? endedTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TripStatus,
      passenger1: passenger1 == freezed
          ? _value.passenger1
          : passenger1 // ignore: cast_nullable_to_non_nullable
              as PassengerEntityDto,
      passenger2: passenger2 == freezed
          ? _value.passenger2
          : passenger2 // ignore: cast_nullable_to_non_nullable
              as PassengerEntityDto?,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      startedTime: startedTime == freezed
          ? _value.startedTime
          : startedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedTime: endedTime == freezed
          ? _value.endedTime
          : endedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $TripStatusCopyWith<$Res> get status {
    return $TripStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $PassengerEntityDtoCopyWith<$Res> get passenger1 {
    return $PassengerEntityDtoCopyWith<$Res>(_value.passenger1, (value) {
      return _then(_value.copyWith(passenger1: value));
    });
  }

  @override
  $PassengerEntityDtoCopyWith<$Res>? get passenger2 {
    if (_value.passenger2 == null) {
      return null;
    }

    return $PassengerEntityDtoCopyWith<$Res>(_value.passenger2!, (value) {
      return _then(_value.copyWith(passenger2: value));
    });
  }
}

/// @nodoc
abstract class _$TripEntityDtoCopyWith<$Res>
    implements $TripEntityDtoCopyWith<$Res> {
  factory _$TripEntityDtoCopyWith(
          _TripEntityDto value, $Res Function(_TripEntityDto) then) =
      __$TripEntityDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: TripEntityDto.idKey, ignore: true)
          String? id,
      @JsonKey(name: TripEntityDto.statusKey, toJson: TripEntityDto._statusToJson, fromJson: TripEntityDto._statusFromJson)
          TripStatus status,
      @JsonKey(name: TripEntityDto.passenger1Key)
          PassengerEntityDto passenger1,
      @JsonKey(name: TripEntityDto.passenger2Key)
          PassengerEntityDto? passenger2,
      @JsonKey(name: TripEntityDto.driverIdKey)
          String? driverId,
      @JsonKey(name: TripEntityDto.startedTimeKey)
          DateTime? startedTime,
      @JsonKey(name: TripEntityDto.endedTimeKey)
          DateTime? endedTime});

  @override
  $TripStatusCopyWith<$Res> get status;
  @override
  $PassengerEntityDtoCopyWith<$Res> get passenger1;
  @override
  $PassengerEntityDtoCopyWith<$Res>? get passenger2;
}

/// @nodoc
class __$TripEntityDtoCopyWithImpl<$Res>
    extends _$TripEntityDtoCopyWithImpl<$Res>
    implements _$TripEntityDtoCopyWith<$Res> {
  __$TripEntityDtoCopyWithImpl(
      _TripEntityDto _value, $Res Function(_TripEntityDto) _then)
      : super(_value, (v) => _then(v as _TripEntityDto));

  @override
  _TripEntityDto get _value => super._value as _TripEntityDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? passenger1 = freezed,
    Object? passenger2 = freezed,
    Object? driverId = freezed,
    Object? startedTime = freezed,
    Object? endedTime = freezed,
  }) {
    return _then(_TripEntityDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TripStatus,
      passenger1: passenger1 == freezed
          ? _value.passenger1
          : passenger1 // ignore: cast_nullable_to_non_nullable
              as PassengerEntityDto,
      passenger2: passenger2 == freezed
          ? _value.passenger2
          : passenger2 // ignore: cast_nullable_to_non_nullable
              as PassengerEntityDto?,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      startedTime: startedTime == freezed
          ? _value.startedTime
          : startedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedTime: endedTime == freezed
          ? _value.endedTime
          : endedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TripEntityDto extends _TripEntityDto {
  _$_TripEntityDto(
      {@JsonKey(name: TripEntityDto.idKey, ignore: true)
          this.id,
      @JsonKey(name: TripEntityDto.statusKey, toJson: TripEntityDto._statusToJson, fromJson: TripEntityDto._statusFromJson)
          required this.status,
      @JsonKey(name: TripEntityDto.passenger1Key)
          required this.passenger1,
      @JsonKey(name: TripEntityDto.passenger2Key)
          required this.passenger2,
      @JsonKey(name: TripEntityDto.driverIdKey)
          required this.driverId,
      @JsonKey(name: TripEntityDto.startedTimeKey)
          required this.startedTime,
      @JsonKey(name: TripEntityDto.endedTimeKey)
          required this.endedTime})
      : super._();

  factory _$_TripEntityDto.fromJson(Map<String, dynamic> json) =>
      _$$_TripEntityDtoFromJson(json);

  @override
  @JsonKey(name: TripEntityDto.idKey, ignore: true)
  final String? id;
  @override
  @JsonKey(
      name: TripEntityDto.statusKey,
      toJson: TripEntityDto._statusToJson,
      fromJson: TripEntityDto._statusFromJson)
  final TripStatus status;
  @override
  @JsonKey(name: TripEntityDto.passenger1Key)
  final PassengerEntityDto passenger1;
  @override
  @JsonKey(name: TripEntityDto.passenger2Key)
  final PassengerEntityDto? passenger2;
  @override
  @JsonKey(name: TripEntityDto.driverIdKey)
  final String? driverId;
  @override
  @JsonKey(name: TripEntityDto.startedTimeKey)
  final DateTime? startedTime;
  @override
  @JsonKey(name: TripEntityDto.endedTimeKey)
  final DateTime? endedTime;

  @override
  String toString() {
    return 'TripEntityDto(id: $id, status: $status, passenger1: $passenger1, passenger2: $passenger2, driverId: $driverId, startedTime: $startedTime, endedTime: $endedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TripEntityDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.passenger1, passenger1) &&
            const DeepCollectionEquality()
                .equals(other.passenger2, passenger2) &&
            const DeepCollectionEquality().equals(other.driverId, driverId) &&
            const DeepCollectionEquality()
                .equals(other.startedTime, startedTime) &&
            const DeepCollectionEquality().equals(other.endedTime, endedTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(passenger1),
      const DeepCollectionEquality().hash(passenger2),
      const DeepCollectionEquality().hash(driverId),
      const DeepCollectionEquality().hash(startedTime),
      const DeepCollectionEquality().hash(endedTime));

  @JsonKey(ignore: true)
  @override
  _$TripEntityDtoCopyWith<_TripEntityDto> get copyWith =>
      __$TripEntityDtoCopyWithImpl<_TripEntityDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripEntityDtoToJson(this);
  }
}

abstract class _TripEntityDto extends TripEntityDto {
  factory _TripEntityDto(
      {@JsonKey(name: TripEntityDto.idKey, ignore: true)
          String? id,
      @JsonKey(name: TripEntityDto.statusKey, toJson: TripEntityDto._statusToJson, fromJson: TripEntityDto._statusFromJson)
          required TripStatus status,
      @JsonKey(name: TripEntityDto.passenger1Key)
          required PassengerEntityDto passenger1,
      @JsonKey(name: TripEntityDto.passenger2Key)
          required PassengerEntityDto? passenger2,
      @JsonKey(name: TripEntityDto.driverIdKey)
          required String? driverId,
      @JsonKey(name: TripEntityDto.startedTimeKey)
          required DateTime? startedTime,
      @JsonKey(name: TripEntityDto.endedTimeKey)
          required DateTime? endedTime}) = _$_TripEntityDto;
  _TripEntityDto._() : super._();

  factory _TripEntityDto.fromJson(Map<String, dynamic> json) =
      _$_TripEntityDto.fromJson;

  @override
  @JsonKey(name: TripEntityDto.idKey, ignore: true)
  String? get id;
  @override
  @JsonKey(
      name: TripEntityDto.statusKey,
      toJson: TripEntityDto._statusToJson,
      fromJson: TripEntityDto._statusFromJson)
  TripStatus get status;
  @override
  @JsonKey(name: TripEntityDto.passenger1Key)
  PassengerEntityDto get passenger1;
  @override
  @JsonKey(name: TripEntityDto.passenger2Key)
  PassengerEntityDto? get passenger2;
  @override
  @JsonKey(name: TripEntityDto.driverIdKey)
  String? get driverId;
  @override
  @JsonKey(name: TripEntityDto.startedTimeKey)
  DateTime? get startedTime;
  @override
  @JsonKey(name: TripEntityDto.endedTimeKey)
  DateTime? get endedTime;
  @override
  @JsonKey(ignore: true)
  _$TripEntityDtoCopyWith<_TripEntityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PassengerEntityDto _$PassengerEntityDtoFromJson(Map<String, dynamic> json) {
  return _PassengerEntity.fromJson(json);
}

/// @nodoc
class _$PassengerEntityDtoTearOff {
  const _$PassengerEntityDtoTearOff();

  _PassengerEntity call(
      {required UserEntityDto user,
      required String note,
      required bool allowToShare,
      required LocationAddress originLocation,
      required LocationAddress? destinationLocation,
      required LocationAddress? actualDestinationLocation}) {
    return _PassengerEntity(
      user: user,
      note: note,
      allowToShare: allowToShare,
      originLocation: originLocation,
      destinationLocation: destinationLocation,
      actualDestinationLocation: actualDestinationLocation,
    );
  }

  PassengerEntityDto fromJson(Map<String, Object?> json) {
    return PassengerEntityDto.fromJson(json);
  }
}

/// @nodoc
const $PassengerEntityDto = _$PassengerEntityDtoTearOff();

/// @nodoc
mixin _$PassengerEntityDto {
  UserEntityDto get user => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  bool get allowToShare => throw _privateConstructorUsedError;
  LocationAddress get originLocation => throw _privateConstructorUsedError;
  LocationAddress? get destinationLocation =>
      throw _privateConstructorUsedError;
  LocationAddress? get actualDestinationLocation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassengerEntityDtoCopyWith<PassengerEntityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassengerEntityDtoCopyWith<$Res> {
  factory $PassengerEntityDtoCopyWith(
          PassengerEntityDto value, $Res Function(PassengerEntityDto) then) =
      _$PassengerEntityDtoCopyWithImpl<$Res>;
  $Res call(
      {UserEntityDto user,
      String note,
      bool allowToShare,
      LocationAddress originLocation,
      LocationAddress? destinationLocation,
      LocationAddress? actualDestinationLocation});

  $UserEntityDtoCopyWith<$Res> get user;
  $LocationAddressCopyWith<$Res> get originLocation;
  $LocationAddressCopyWith<$Res>? get destinationLocation;
  $LocationAddressCopyWith<$Res>? get actualDestinationLocation;
}

/// @nodoc
class _$PassengerEntityDtoCopyWithImpl<$Res>
    implements $PassengerEntityDtoCopyWith<$Res> {
  _$PassengerEntityDtoCopyWithImpl(this._value, this._then);

  final PassengerEntityDto _value;
  // ignore: unused_field
  final $Res Function(PassengerEntityDto) _then;

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
              as UserEntityDto,
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
              as LocationAddress,
      destinationLocation: destinationLocation == freezed
          ? _value.destinationLocation
          : destinationLocation // ignore: cast_nullable_to_non_nullable
              as LocationAddress?,
      actualDestinationLocation: actualDestinationLocation == freezed
          ? _value.actualDestinationLocation
          : actualDestinationLocation // ignore: cast_nullable_to_non_nullable
              as LocationAddress?,
    ));
  }

  @override
  $UserEntityDtoCopyWith<$Res> get user {
    return $UserEntityDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $LocationAddressCopyWith<$Res> get originLocation {
    return $LocationAddressCopyWith<$Res>(_value.originLocation, (value) {
      return _then(_value.copyWith(originLocation: value));
    });
  }

  @override
  $LocationAddressCopyWith<$Res>? get destinationLocation {
    if (_value.destinationLocation == null) {
      return null;
    }

    return $LocationAddressCopyWith<$Res>(_value.destinationLocation!, (value) {
      return _then(_value.copyWith(destinationLocation: value));
    });
  }

  @override
  $LocationAddressCopyWith<$Res>? get actualDestinationLocation {
    if (_value.actualDestinationLocation == null) {
      return null;
    }

    return $LocationAddressCopyWith<$Res>(_value.actualDestinationLocation!,
        (value) {
      return _then(_value.copyWith(actualDestinationLocation: value));
    });
  }
}

/// @nodoc
abstract class _$PassengerEntityCopyWith<$Res>
    implements $PassengerEntityDtoCopyWith<$Res> {
  factory _$PassengerEntityCopyWith(
          _PassengerEntity value, $Res Function(_PassengerEntity) then) =
      __$PassengerEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserEntityDto user,
      String note,
      bool allowToShare,
      LocationAddress originLocation,
      LocationAddress? destinationLocation,
      LocationAddress? actualDestinationLocation});

  @override
  $UserEntityDtoCopyWith<$Res> get user;
  @override
  $LocationAddressCopyWith<$Res> get originLocation;
  @override
  $LocationAddressCopyWith<$Res>? get destinationLocation;
  @override
  $LocationAddressCopyWith<$Res>? get actualDestinationLocation;
}

/// @nodoc
class __$PassengerEntityCopyWithImpl<$Res>
    extends _$PassengerEntityDtoCopyWithImpl<$Res>
    implements _$PassengerEntityCopyWith<$Res> {
  __$PassengerEntityCopyWithImpl(
      _PassengerEntity _value, $Res Function(_PassengerEntity) _then)
      : super(_value, (v) => _then(v as _PassengerEntity));

  @override
  _PassengerEntity get _value => super._value as _PassengerEntity;

  @override
  $Res call({
    Object? user = freezed,
    Object? note = freezed,
    Object? allowToShare = freezed,
    Object? originLocation = freezed,
    Object? destinationLocation = freezed,
    Object? actualDestinationLocation = freezed,
  }) {
    return _then(_PassengerEntity(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntityDto,
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
              as LocationAddress,
      destinationLocation: destinationLocation == freezed
          ? _value.destinationLocation
          : destinationLocation // ignore: cast_nullable_to_non_nullable
              as LocationAddress?,
      actualDestinationLocation: actualDestinationLocation == freezed
          ? _value.actualDestinationLocation
          : actualDestinationLocation // ignore: cast_nullable_to_non_nullable
              as LocationAddress?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PassengerEntity extends _PassengerEntity {
  _$_PassengerEntity(
      {required this.user,
      required this.note,
      required this.allowToShare,
      required this.originLocation,
      required this.destinationLocation,
      required this.actualDestinationLocation})
      : super._();

  factory _$_PassengerEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PassengerEntityFromJson(json);

  @override
  final UserEntityDto user;
  @override
  final String note;
  @override
  final bool allowToShare;
  @override
  final LocationAddress originLocation;
  @override
  final LocationAddress? destinationLocation;
  @override
  final LocationAddress? actualDestinationLocation;

  @override
  String toString() {
    return 'PassengerEntityDto(user: $user, note: $note, allowToShare: $allowToShare, originLocation: $originLocation, destinationLocation: $destinationLocation, actualDestinationLocation: $actualDestinationLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PassengerEntity &&
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
  _$PassengerEntityCopyWith<_PassengerEntity> get copyWith =>
      __$PassengerEntityCopyWithImpl<_PassengerEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PassengerEntityToJson(this);
  }
}

abstract class _PassengerEntity extends PassengerEntityDto {
  factory _PassengerEntity(
          {required UserEntityDto user,
          required String note,
          required bool allowToShare,
          required LocationAddress originLocation,
          required LocationAddress? destinationLocation,
          required LocationAddress? actualDestinationLocation}) =
      _$_PassengerEntity;
  _PassengerEntity._() : super._();

  factory _PassengerEntity.fromJson(Map<String, dynamic> json) =
      _$_PassengerEntity.fromJson;

  @override
  UserEntityDto get user;
  @override
  String get note;
  @override
  bool get allowToShare;
  @override
  LocationAddress get originLocation;
  @override
  LocationAddress? get destinationLocation;
  @override
  LocationAddress? get actualDestinationLocation;
  @override
  @JsonKey(ignore: true)
  _$PassengerEntityCopyWith<_PassengerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
