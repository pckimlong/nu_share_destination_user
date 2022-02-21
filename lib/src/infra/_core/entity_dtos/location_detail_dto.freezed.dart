// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationDetailDto _$LocationDetailDtoFromJson(Map<String, dynamic> json) {
  return _LocationDetailDto.fromJson(json);
}

/// @nodoc
class _$LocationDetailDtoTearOff {
  const _$LocationDetailDtoTearOff();

  _LocationDetailDto call(
      {@JsonKey(name: LocationDetailDto.locationPointKey, toJson: LocationDetailDto._geoPointToJson, fromJson: LocationDetailDto._geoPointFromJson)
          required LocationPoint locationPoint,
      @JsonKey(name: LocationDetailDto.accuracyKey)
          required double accuracy,
      @JsonKey(name: LocationDetailDto.altitudeKey)
          required double altitude,
      @JsonKey(name: LocationDetailDto.speedKey)
          required double speed,
      @JsonKey(name: LocationDetailDto.speedAccuracyKey)
          required double speedAccuracy,
      @JsonKey(name: LocationDetailDto.headingKey)
          required double heading,
      @JsonKey(name: LocationDetailDto.timeKey)
          required DateTime? time}) {
    return _LocationDetailDto(
      locationPoint: locationPoint,
      accuracy: accuracy,
      altitude: altitude,
      speed: speed,
      speedAccuracy: speedAccuracy,
      heading: heading,
      time: time,
    );
  }

  LocationDetailDto fromJson(Map<String, Object?> json) {
    return LocationDetailDto.fromJson(json);
  }
}

/// @nodoc
const $LocationDetailDto = _$LocationDetailDtoTearOff();

/// @nodoc
mixin _$LocationDetailDto {
  /// Geolocation position contain coordinate, hash
  @JsonKey(
      name: LocationDetailDto.locationPointKey,
      toJson: LocationDetailDto._geoPointToJson,
      fromJson: LocationDetailDto._geoPointFromJson)
  LocationPoint get locationPoint => throw _privateConstructorUsedError;
  @JsonKey(name: LocationDetailDto.accuracyKey)
  double get accuracy => throw _privateConstructorUsedError;
  @JsonKey(name: LocationDetailDto.altitudeKey)
  double get altitude => throw _privateConstructorUsedError;
  @JsonKey(name: LocationDetailDto.speedKey)
  double get speed => throw _privateConstructorUsedError;
  @JsonKey(name: LocationDetailDto.speedAccuracyKey)
  double get speedAccuracy => throw _privateConstructorUsedError;
  @JsonKey(name: LocationDetailDto.headingKey)
  double get heading => throw _privateConstructorUsedError;
  @JsonKey(name: LocationDetailDto.timeKey)
  DateTime? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDetailDtoCopyWith<LocationDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDetailDtoCopyWith<$Res> {
  factory $LocationDetailDtoCopyWith(
          LocationDetailDto value, $Res Function(LocationDetailDto) then) =
      _$LocationDetailDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: LocationDetailDto.locationPointKey, toJson: LocationDetailDto._geoPointToJson, fromJson: LocationDetailDto._geoPointFromJson)
          LocationPoint locationPoint,
      @JsonKey(name: LocationDetailDto.accuracyKey)
          double accuracy,
      @JsonKey(name: LocationDetailDto.altitudeKey)
          double altitude,
      @JsonKey(name: LocationDetailDto.speedKey)
          double speed,
      @JsonKey(name: LocationDetailDto.speedAccuracyKey)
          double speedAccuracy,
      @JsonKey(name: LocationDetailDto.headingKey)
          double heading,
      @JsonKey(name: LocationDetailDto.timeKey)
          DateTime? time});

  $LocationPointCopyWith<$Res> get locationPoint;
}

/// @nodoc
class _$LocationDetailDtoCopyWithImpl<$Res>
    implements $LocationDetailDtoCopyWith<$Res> {
  _$LocationDetailDtoCopyWithImpl(this._value, this._then);

  final LocationDetailDto _value;
  // ignore: unused_field
  final $Res Function(LocationDetailDto) _then;

  @override
  $Res call({
    Object? locationPoint = freezed,
    Object? accuracy = freezed,
    Object? altitude = freezed,
    Object? speed = freezed,
    Object? speedAccuracy = freezed,
    Object? heading = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      locationPoint: locationPoint == freezed
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as LocationPoint,
      accuracy: accuracy == freezed
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double,
      altitude: altitude == freezed
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      speedAccuracy: speedAccuracy == freezed
          ? _value.speedAccuracy
          : speedAccuracy // ignore: cast_nullable_to_non_nullable
              as double,
      heading: heading == freezed
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$LocationDetailDtoCopyWith<$Res>
    implements $LocationDetailDtoCopyWith<$Res> {
  factory _$LocationDetailDtoCopyWith(
          _LocationDetailDto value, $Res Function(_LocationDetailDto) then) =
      __$LocationDetailDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: LocationDetailDto.locationPointKey, toJson: LocationDetailDto._geoPointToJson, fromJson: LocationDetailDto._geoPointFromJson)
          LocationPoint locationPoint,
      @JsonKey(name: LocationDetailDto.accuracyKey)
          double accuracy,
      @JsonKey(name: LocationDetailDto.altitudeKey)
          double altitude,
      @JsonKey(name: LocationDetailDto.speedKey)
          double speed,
      @JsonKey(name: LocationDetailDto.speedAccuracyKey)
          double speedAccuracy,
      @JsonKey(name: LocationDetailDto.headingKey)
          double heading,
      @JsonKey(name: LocationDetailDto.timeKey)
          DateTime? time});

  @override
  $LocationPointCopyWith<$Res> get locationPoint;
}

/// @nodoc
class __$LocationDetailDtoCopyWithImpl<$Res>
    extends _$LocationDetailDtoCopyWithImpl<$Res>
    implements _$LocationDetailDtoCopyWith<$Res> {
  __$LocationDetailDtoCopyWithImpl(
      _LocationDetailDto _value, $Res Function(_LocationDetailDto) _then)
      : super(_value, (v) => _then(v as _LocationDetailDto));

  @override
  _LocationDetailDto get _value => super._value as _LocationDetailDto;

  @override
  $Res call({
    Object? locationPoint = freezed,
    Object? accuracy = freezed,
    Object? altitude = freezed,
    Object? speed = freezed,
    Object? speedAccuracy = freezed,
    Object? heading = freezed,
    Object? time = freezed,
  }) {
    return _then(_LocationDetailDto(
      locationPoint: locationPoint == freezed
          ? _value.locationPoint
          : locationPoint // ignore: cast_nullable_to_non_nullable
              as LocationPoint,
      accuracy: accuracy == freezed
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double,
      altitude: altitude == freezed
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      speedAccuracy: speedAccuracy == freezed
          ? _value.speedAccuracy
          : speedAccuracy // ignore: cast_nullable_to_non_nullable
              as double,
      heading: heading == freezed
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationDetailDto extends _LocationDetailDto {
  _$_LocationDetailDto(
      {@JsonKey(name: LocationDetailDto.locationPointKey, toJson: LocationDetailDto._geoPointToJson, fromJson: LocationDetailDto._geoPointFromJson)
          required this.locationPoint,
      @JsonKey(name: LocationDetailDto.accuracyKey)
          required this.accuracy,
      @JsonKey(name: LocationDetailDto.altitudeKey)
          required this.altitude,
      @JsonKey(name: LocationDetailDto.speedKey)
          required this.speed,
      @JsonKey(name: LocationDetailDto.speedAccuracyKey)
          required this.speedAccuracy,
      @JsonKey(name: LocationDetailDto.headingKey)
          required this.heading,
      @JsonKey(name: LocationDetailDto.timeKey)
          required this.time})
      : super._();

  factory _$_LocationDetailDto.fromJson(Map<String, dynamic> json) =>
      _$$_LocationDetailDtoFromJson(json);

  @override

  /// Geolocation position contain coordinate, hash
  @JsonKey(
      name: LocationDetailDto.locationPointKey,
      toJson: LocationDetailDto._geoPointToJson,
      fromJson: LocationDetailDto._geoPointFromJson)
  final LocationPoint locationPoint;
  @override
  @JsonKey(name: LocationDetailDto.accuracyKey)
  final double accuracy;
  @override
  @JsonKey(name: LocationDetailDto.altitudeKey)
  final double altitude;
  @override
  @JsonKey(name: LocationDetailDto.speedKey)
  final double speed;
  @override
  @JsonKey(name: LocationDetailDto.speedAccuracyKey)
  final double speedAccuracy;
  @override
  @JsonKey(name: LocationDetailDto.headingKey)
  final double heading;
  @override
  @JsonKey(name: LocationDetailDto.timeKey)
  final DateTime? time;

  @override
  String toString() {
    return 'LocationDetailDto(locationPoint: $locationPoint, accuracy: $accuracy, altitude: $altitude, speed: $speed, speedAccuracy: $speedAccuracy, heading: $heading, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationDetailDto &&
            const DeepCollectionEquality()
                .equals(other.locationPoint, locationPoint) &&
            const DeepCollectionEquality().equals(other.accuracy, accuracy) &&
            const DeepCollectionEquality().equals(other.altitude, altitude) &&
            const DeepCollectionEquality().equals(other.speed, speed) &&
            const DeepCollectionEquality()
                .equals(other.speedAccuracy, speedAccuracy) &&
            const DeepCollectionEquality().equals(other.heading, heading) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(locationPoint),
      const DeepCollectionEquality().hash(accuracy),
      const DeepCollectionEquality().hash(altitude),
      const DeepCollectionEquality().hash(speed),
      const DeepCollectionEquality().hash(speedAccuracy),
      const DeepCollectionEquality().hash(heading),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$LocationDetailDtoCopyWith<_LocationDetailDto> get copyWith =>
      __$LocationDetailDtoCopyWithImpl<_LocationDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationDetailDtoToJson(this);
  }
}

abstract class _LocationDetailDto extends LocationDetailDto {
  factory _LocationDetailDto(
      {@JsonKey(name: LocationDetailDto.locationPointKey, toJson: LocationDetailDto._geoPointToJson, fromJson: LocationDetailDto._geoPointFromJson)
          required LocationPoint locationPoint,
      @JsonKey(name: LocationDetailDto.accuracyKey)
          required double accuracy,
      @JsonKey(name: LocationDetailDto.altitudeKey)
          required double altitude,
      @JsonKey(name: LocationDetailDto.speedKey)
          required double speed,
      @JsonKey(name: LocationDetailDto.speedAccuracyKey)
          required double speedAccuracy,
      @JsonKey(name: LocationDetailDto.headingKey)
          required double heading,
      @JsonKey(name: LocationDetailDto.timeKey)
          required DateTime? time}) = _$_LocationDetailDto;
  _LocationDetailDto._() : super._();

  factory _LocationDetailDto.fromJson(Map<String, dynamic> json) =
      _$_LocationDetailDto.fromJson;

  @override

  /// Geolocation position contain coordinate, hash
  @JsonKey(
      name: LocationDetailDto.locationPointKey,
      toJson: LocationDetailDto._geoPointToJson,
      fromJson: LocationDetailDto._geoPointFromJson)
  LocationPoint get locationPoint;
  @override
  @JsonKey(name: LocationDetailDto.accuracyKey)
  double get accuracy;
  @override
  @JsonKey(name: LocationDetailDto.altitudeKey)
  double get altitude;
  @override
  @JsonKey(name: LocationDetailDto.speedKey)
  double get speed;
  @override
  @JsonKey(name: LocationDetailDto.speedAccuracyKey)
  double get speedAccuracy;
  @override
  @JsonKey(name: LocationDetailDto.headingKey)
  double get heading;
  @override
  @JsonKey(name: LocationDetailDto.timeKey)
  DateTime? get time;
  @override
  @JsonKey(ignore: true)
  _$LocationDetailDtoCopyWith<_LocationDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}
