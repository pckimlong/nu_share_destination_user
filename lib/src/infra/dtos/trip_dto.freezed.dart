// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TripDto _$TripDtoFromJson(Map<String, dynamic> json) {
  return _TripDto.fromJson(json);
}

/// @nodoc
class _$TripDtoTearOff {
  const _$TripDtoTearOff();

  _TripDto call(
      {@JsonKey(name: TripDto.idKey, ignore: true)
          String? id,
      @JsonKey(name: TripDto.statusKey, toJson: TripDto._statusToJson, fromJson: TripDto._statusFromJson)
          required TripStatus status,
      @JsonKey(name: TripDto.passenger1Key)
          required PassengerDto passenger1,
      @JsonKey(name: TripDto.passenger2Key)
          required PassengerDto? passenger2,
      @JsonKey(name: TripDto.driverIdKey)
          required String? driverId,
      @JsonKey(name: TripDto.startedTimeKey)
          required DateTime? startedTime,
      @JsonKey(name: TripDto.endedTimeKey)
          required DateTime? endedTime}) {
    return _TripDto(
      id: id,
      status: status,
      passenger1: passenger1,
      passenger2: passenger2,
      driverId: driverId,
      startedTime: startedTime,
      endedTime: endedTime,
    );
  }

  TripDto fromJson(Map<String, Object?> json) {
    return TripDto.fromJson(json);
  }
}

/// @nodoc
const $TripDto = _$TripDtoTearOff();

/// @nodoc
mixin _$TripDto {
  @JsonKey(name: TripDto.idKey, ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(
      name: TripDto.statusKey,
      toJson: TripDto._statusToJson,
      fromJson: TripDto._statusFromJson)
  TripStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: TripDto.passenger1Key)
  PassengerDto get passenger1 => throw _privateConstructorUsedError;
  @JsonKey(name: TripDto.passenger2Key)
  PassengerDto? get passenger2 => throw _privateConstructorUsedError;
  @JsonKey(name: TripDto.driverIdKey)
  String? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: TripDto.startedTimeKey)
  DateTime? get startedTime => throw _privateConstructorUsedError;
  @JsonKey(name: TripDto.endedTimeKey)
  DateTime? get endedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripDtoCopyWith<TripDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripDtoCopyWith<$Res> {
  factory $TripDtoCopyWith(TripDto value, $Res Function(TripDto) then) =
      _$TripDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: TripDto.idKey, ignore: true)
          String? id,
      @JsonKey(name: TripDto.statusKey, toJson: TripDto._statusToJson, fromJson: TripDto._statusFromJson)
          TripStatus status,
      @JsonKey(name: TripDto.passenger1Key)
          PassengerDto passenger1,
      @JsonKey(name: TripDto.passenger2Key)
          PassengerDto? passenger2,
      @JsonKey(name: TripDto.driverIdKey)
          String? driverId,
      @JsonKey(name: TripDto.startedTimeKey)
          DateTime? startedTime,
      @JsonKey(name: TripDto.endedTimeKey)
          DateTime? endedTime});

  $TripStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$TripDtoCopyWithImpl<$Res> implements $TripDtoCopyWith<$Res> {
  _$TripDtoCopyWithImpl(this._value, this._then);

  final TripDto _value;
  // ignore: unused_field
  final $Res Function(TripDto) _then;

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
              as PassengerDto,
      passenger2: passenger2 == freezed
          ? _value.passenger2
          : passenger2 // ignore: cast_nullable_to_non_nullable
              as PassengerDto?,
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
}

/// @nodoc
abstract class _$TripDtoCopyWith<$Res> implements $TripDtoCopyWith<$Res> {
  factory _$TripDtoCopyWith(_TripDto value, $Res Function(_TripDto) then) =
      __$TripDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: TripDto.idKey, ignore: true)
          String? id,
      @JsonKey(name: TripDto.statusKey, toJson: TripDto._statusToJson, fromJson: TripDto._statusFromJson)
          TripStatus status,
      @JsonKey(name: TripDto.passenger1Key)
          PassengerDto passenger1,
      @JsonKey(name: TripDto.passenger2Key)
          PassengerDto? passenger2,
      @JsonKey(name: TripDto.driverIdKey)
          String? driverId,
      @JsonKey(name: TripDto.startedTimeKey)
          DateTime? startedTime,
      @JsonKey(name: TripDto.endedTimeKey)
          DateTime? endedTime});

  @override
  $TripStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$TripDtoCopyWithImpl<$Res> extends _$TripDtoCopyWithImpl<$Res>
    implements _$TripDtoCopyWith<$Res> {
  __$TripDtoCopyWithImpl(_TripDto _value, $Res Function(_TripDto) _then)
      : super(_value, (v) => _then(v as _TripDto));

  @override
  _TripDto get _value => super._value as _TripDto;

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
    return _then(_TripDto(
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
              as PassengerDto,
      passenger2: passenger2 == freezed
          ? _value.passenger2
          : passenger2 // ignore: cast_nullable_to_non_nullable
              as PassengerDto?,
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
class _$_TripDto extends _TripDto {
  _$_TripDto(
      {@JsonKey(name: TripDto.idKey, ignore: true)
          this.id,
      @JsonKey(name: TripDto.statusKey, toJson: TripDto._statusToJson, fromJson: TripDto._statusFromJson)
          required this.status,
      @JsonKey(name: TripDto.passenger1Key)
          required this.passenger1,
      @JsonKey(name: TripDto.passenger2Key)
          required this.passenger2,
      @JsonKey(name: TripDto.driverIdKey)
          required this.driverId,
      @JsonKey(name: TripDto.startedTimeKey)
          required this.startedTime,
      @JsonKey(name: TripDto.endedTimeKey)
          required this.endedTime})
      : super._();

  factory _$_TripDto.fromJson(Map<String, dynamic> json) =>
      _$$_TripDtoFromJson(json);

  @override
  @JsonKey(name: TripDto.idKey, ignore: true)
  final String? id;
  @override
  @JsonKey(
      name: TripDto.statusKey,
      toJson: TripDto._statusToJson,
      fromJson: TripDto._statusFromJson)
  final TripStatus status;
  @override
  @JsonKey(name: TripDto.passenger1Key)
  final PassengerDto passenger1;
  @override
  @JsonKey(name: TripDto.passenger2Key)
  final PassengerDto? passenger2;
  @override
  @JsonKey(name: TripDto.driverIdKey)
  final String? driverId;
  @override
  @JsonKey(name: TripDto.startedTimeKey)
  final DateTime? startedTime;
  @override
  @JsonKey(name: TripDto.endedTimeKey)
  final DateTime? endedTime;

  @override
  String toString() {
    return 'TripDto(id: $id, status: $status, passenger1: $passenger1, passenger2: $passenger2, driverId: $driverId, startedTime: $startedTime, endedTime: $endedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TripDto &&
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
  _$TripDtoCopyWith<_TripDto> get copyWith =>
      __$TripDtoCopyWithImpl<_TripDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripDtoToJson(this);
  }
}

abstract class _TripDto extends TripDto {
  factory _TripDto(
      {@JsonKey(name: TripDto.idKey, ignore: true)
          String? id,
      @JsonKey(name: TripDto.statusKey, toJson: TripDto._statusToJson, fromJson: TripDto._statusFromJson)
          required TripStatus status,
      @JsonKey(name: TripDto.passenger1Key)
          required PassengerDto passenger1,
      @JsonKey(name: TripDto.passenger2Key)
          required PassengerDto? passenger2,
      @JsonKey(name: TripDto.driverIdKey)
          required String? driverId,
      @JsonKey(name: TripDto.startedTimeKey)
          required DateTime? startedTime,
      @JsonKey(name: TripDto.endedTimeKey)
          required DateTime? endedTime}) = _$_TripDto;
  _TripDto._() : super._();

  factory _TripDto.fromJson(Map<String, dynamic> json) = _$_TripDto.fromJson;

  @override
  @JsonKey(name: TripDto.idKey, ignore: true)
  String? get id;
  @override
  @JsonKey(
      name: TripDto.statusKey,
      toJson: TripDto._statusToJson,
      fromJson: TripDto._statusFromJson)
  TripStatus get status;
  @override
  @JsonKey(name: TripDto.passenger1Key)
  PassengerDto get passenger1;
  @override
  @JsonKey(name: TripDto.passenger2Key)
  PassengerDto? get passenger2;
  @override
  @JsonKey(name: TripDto.driverIdKey)
  String? get driverId;
  @override
  @JsonKey(name: TripDto.startedTimeKey)
  DateTime? get startedTime;
  @override
  @JsonKey(name: TripDto.endedTimeKey)
  DateTime? get endedTime;
  @override
  @JsonKey(ignore: true)
  _$TripDtoCopyWith<_TripDto> get copyWith =>
      throw _privateConstructorUsedError;
}
