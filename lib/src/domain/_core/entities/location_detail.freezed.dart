// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationDetail _$LocationDetailFromJson(Map<String, dynamic> json) {
  return _LocationDetail.fromJson(json);
}

/// @nodoc
class _$LocationDetailTearOff {
  const _$LocationDetailTearOff();

  _LocationDetail call(
      {@JsonKey(name: LocationDetail.locationPointKey)
          required LocationPoint locationPoint,
      @JsonKey(name: LocationDetail.accuracyKey)
          required double accuracy,
      @JsonKey(name: LocationDetail.altitudeKey)
          required double altitude,
      @JsonKey(name: LocationDetail.speedKey)
          required double speed,
      @JsonKey(name: LocationDetail.speedAccuracyKey)
          required double speedAccuracy,
      @JsonKey(name: LocationDetail.headingKey)
          required double heading,
      @JsonKey(name: LocationDetail.timeKey)
          required DateTime time}) {
    return _LocationDetail(
      locationPoint: locationPoint,
      accuracy: accuracy,
      altitude: altitude,
      speed: speed,
      speedAccuracy: speedAccuracy,
      heading: heading,
      time: time,
    );
  }

  LocationDetail fromJson(Map<String, Object?> json) {
    return LocationDetail.fromJson(json);
  }
}

/// @nodoc
const $LocationDetail = _$LocationDetailTearOff();

/// @nodoc
mixin _$LocationDetail {
  /// Geolocation position contain coordinate, hash
  @JsonKey(name: LocationDetail.locationPointKey)
  LocationPoint get locationPoint => throw _privateConstructorUsedError;
  @JsonKey(name: LocationDetail.accuracyKey)
  double get accuracy => throw _privateConstructorUsedError;
  @JsonKey(name: LocationDetail.altitudeKey)
  double get altitude => throw _privateConstructorUsedError;
  @JsonKey(name: LocationDetail.speedKey)
  double get speed => throw _privateConstructorUsedError;
  @JsonKey(name: LocationDetail.speedAccuracyKey)
  double get speedAccuracy => throw _privateConstructorUsedError;
  @JsonKey(name: LocationDetail.headingKey)
  double get heading => throw _privateConstructorUsedError;
  @JsonKey(name: LocationDetail.timeKey)
  DateTime get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDetailCopyWith<LocationDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDetailCopyWith<$Res> {
  factory $LocationDetailCopyWith(
          LocationDetail value, $Res Function(LocationDetail) then) =
      _$LocationDetailCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: LocationDetail.locationPointKey)
          LocationPoint locationPoint,
      @JsonKey(name: LocationDetail.accuracyKey)
          double accuracy,
      @JsonKey(name: LocationDetail.altitudeKey)
          double altitude,
      @JsonKey(name: LocationDetail.speedKey)
          double speed,
      @JsonKey(name: LocationDetail.speedAccuracyKey)
          double speedAccuracy,
      @JsonKey(name: LocationDetail.headingKey)
          double heading,
      @JsonKey(name: LocationDetail.timeKey)
          DateTime time});

  $LocationPointCopyWith<$Res> get locationPoint;
}

/// @nodoc
class _$LocationDetailCopyWithImpl<$Res>
    implements $LocationDetailCopyWith<$Res> {
  _$LocationDetailCopyWithImpl(this._value, this._then);

  final LocationDetail _value;
  // ignore: unused_field
  final $Res Function(LocationDetail) _then;

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
              as DateTime,
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
abstract class _$LocationDetailCopyWith<$Res>
    implements $LocationDetailCopyWith<$Res> {
  factory _$LocationDetailCopyWith(
          _LocationDetail value, $Res Function(_LocationDetail) then) =
      __$LocationDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: LocationDetail.locationPointKey)
          LocationPoint locationPoint,
      @JsonKey(name: LocationDetail.accuracyKey)
          double accuracy,
      @JsonKey(name: LocationDetail.altitudeKey)
          double altitude,
      @JsonKey(name: LocationDetail.speedKey)
          double speed,
      @JsonKey(name: LocationDetail.speedAccuracyKey)
          double speedAccuracy,
      @JsonKey(name: LocationDetail.headingKey)
          double heading,
      @JsonKey(name: LocationDetail.timeKey)
          DateTime time});

  @override
  $LocationPointCopyWith<$Res> get locationPoint;
}

/// @nodoc
class __$LocationDetailCopyWithImpl<$Res>
    extends _$LocationDetailCopyWithImpl<$Res>
    implements _$LocationDetailCopyWith<$Res> {
  __$LocationDetailCopyWithImpl(
      _LocationDetail _value, $Res Function(_LocationDetail) _then)
      : super(_value, (v) => _then(v as _LocationDetail));

  @override
  _LocationDetail get _value => super._value as _LocationDetail;

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
    return _then(_LocationDetail(
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
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationDetail extends _LocationDetail {
  _$_LocationDetail(
      {@JsonKey(name: LocationDetail.locationPointKey)
          required this.locationPoint,
      @JsonKey(name: LocationDetail.accuracyKey)
          required this.accuracy,
      @JsonKey(name: LocationDetail.altitudeKey)
          required this.altitude,
      @JsonKey(name: LocationDetail.speedKey)
          required this.speed,
      @JsonKey(name: LocationDetail.speedAccuracyKey)
          required this.speedAccuracy,
      @JsonKey(name: LocationDetail.headingKey)
          required this.heading,
      @JsonKey(name: LocationDetail.timeKey)
          required this.time})
      : super._();

  factory _$_LocationDetail.fromJson(Map<String, dynamic> json) =>
      _$$_LocationDetailFromJson(json);

  @override

  /// Geolocation position contain coordinate, hash
  @JsonKey(name: LocationDetail.locationPointKey)
  final LocationPoint locationPoint;
  @override
  @JsonKey(name: LocationDetail.accuracyKey)
  final double accuracy;
  @override
  @JsonKey(name: LocationDetail.altitudeKey)
  final double altitude;
  @override
  @JsonKey(name: LocationDetail.speedKey)
  final double speed;
  @override
  @JsonKey(name: LocationDetail.speedAccuracyKey)
  final double speedAccuracy;
  @override
  @JsonKey(name: LocationDetail.headingKey)
  final double heading;
  @override
  @JsonKey(name: LocationDetail.timeKey)
  final DateTime time;

  @override
  String toString() {
    return 'LocationDetail(locationPoint: $locationPoint, accuracy: $accuracy, altitude: $altitude, speed: $speed, speedAccuracy: $speedAccuracy, heading: $heading, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationDetail &&
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
  _$LocationDetailCopyWith<_LocationDetail> get copyWith =>
      __$LocationDetailCopyWithImpl<_LocationDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationDetailToJson(this);
  }
}

abstract class _LocationDetail extends LocationDetail {
  factory _LocationDetail(
      {@JsonKey(name: LocationDetail.locationPointKey)
          required LocationPoint locationPoint,
      @JsonKey(name: LocationDetail.accuracyKey)
          required double accuracy,
      @JsonKey(name: LocationDetail.altitudeKey)
          required double altitude,
      @JsonKey(name: LocationDetail.speedKey)
          required double speed,
      @JsonKey(name: LocationDetail.speedAccuracyKey)
          required double speedAccuracy,
      @JsonKey(name: LocationDetail.headingKey)
          required double heading,
      @JsonKey(name: LocationDetail.timeKey)
          required DateTime time}) = _$_LocationDetail;
  _LocationDetail._() : super._();

  factory _LocationDetail.fromJson(Map<String, dynamic> json) =
      _$_LocationDetail.fromJson;

  @override

  /// Geolocation position contain coordinate, hash
  @JsonKey(name: LocationDetail.locationPointKey)
  LocationPoint get locationPoint;
  @override
  @JsonKey(name: LocationDetail.accuracyKey)
  double get accuracy;
  @override
  @JsonKey(name: LocationDetail.altitudeKey)
  double get altitude;
  @override
  @JsonKey(name: LocationDetail.speedKey)
  double get speed;
  @override
  @JsonKey(name: LocationDetail.speedAccuracyKey)
  double get speedAccuracy;
  @override
  @JsonKey(name: LocationDetail.headingKey)
  double get heading;
  @override
  @JsonKey(name: LocationDetail.timeKey)
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$LocationDetailCopyWith<_LocationDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
