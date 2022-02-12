// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TripEntityTearOff {
  const _$TripEntityTearOff();

  _TripEntity call(
      {required Option<String> id,
      required TripStatus status,
      required PassengerEntity passenger1,
      required Option<PassengerEntity> passenger2,
      required Option<DriverEntity> driver,
      required Option<DateTime> startedTime,
      required Option<DateTime> endedTime}) {
    return _TripEntity(
      id: id,
      status: status,
      passenger1: passenger1,
      passenger2: passenger2,
      driver: driver,
      startedTime: startedTime,
      endedTime: endedTime,
    );
  }
}

/// @nodoc
const $TripEntity = _$TripEntityTearOff();

/// @nodoc
mixin _$TripEntity {
  Option<String> get id => throw _privateConstructorUsedError;

  /// This is important to determind the state of trip
  TripStatus get status => throw _privateConstructorUsedError;

  /// The first passenger who request this trip
  PassengerEntity get passenger1 => throw _privateConstructorUsedError;

  /// If passenger 1 allow share taxi, this trip will be visible to other
  /// so passenger2 can request to this trip too
  Option<PassengerEntity> get passenger2 => throw _privateConstructorUsedError;

  /// This will be none() when trip entity created
  /// And in picking state the driver will be some
  Option<DriverEntity> get driver => throw _privateConstructorUsedError;

  /// Started time since taxi riding to pick passenger
  /// This will be update to some() when taxi accepted and start picking up
  /// the passenger
  Option<DateTime> get startedTime => throw _privateConstructorUsedError;

  /// Ended time. Update when passenger1 and passenger2 status is both finished
  /// the trip
  Option<DateTime> get endedTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripEntityCopyWith<TripEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripEntityCopyWith<$Res> {
  factory $TripEntityCopyWith(
          TripEntity value, $Res Function(TripEntity) then) =
      _$TripEntityCopyWithImpl<$Res>;
  $Res call(
      {Option<String> id,
      TripStatus status,
      PassengerEntity passenger1,
      Option<PassengerEntity> passenger2,
      Option<DriverEntity> driver,
      Option<DateTime> startedTime,
      Option<DateTime> endedTime});

  $TripStatusCopyWith<$Res> get status;
  $PassengerEntityCopyWith<$Res> get passenger1;
}

/// @nodoc
class _$TripEntityCopyWithImpl<$Res> implements $TripEntityCopyWith<$Res> {
  _$TripEntityCopyWithImpl(this._value, this._then);

  final TripEntity _value;
  // ignore: unused_field
  final $Res Function(TripEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? passenger1 = freezed,
    Object? passenger2 = freezed,
    Object? driver = freezed,
    Object? startedTime = freezed,
    Object? endedTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TripStatus,
      passenger1: passenger1 == freezed
          ? _value.passenger1
          : passenger1 // ignore: cast_nullable_to_non_nullable
              as PassengerEntity,
      passenger2: passenger2 == freezed
          ? _value.passenger2
          : passenger2 // ignore: cast_nullable_to_non_nullable
              as Option<PassengerEntity>,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Option<DriverEntity>,
      startedTime: startedTime == freezed
          ? _value.startedTime
          : startedTime // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      endedTime: endedTime == freezed
          ? _value.endedTime
          : endedTime // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
    ));
  }

  @override
  $TripStatusCopyWith<$Res> get status {
    return $TripStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }

  @override
  $PassengerEntityCopyWith<$Res> get passenger1 {
    return $PassengerEntityCopyWith<$Res>(_value.passenger1, (value) {
      return _then(_value.copyWith(passenger1: value));
    });
  }
}

/// @nodoc
abstract class _$TripEntityCopyWith<$Res> implements $TripEntityCopyWith<$Res> {
  factory _$TripEntityCopyWith(
          _TripEntity value, $Res Function(_TripEntity) then) =
      __$TripEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<String> id,
      TripStatus status,
      PassengerEntity passenger1,
      Option<PassengerEntity> passenger2,
      Option<DriverEntity> driver,
      Option<DateTime> startedTime,
      Option<DateTime> endedTime});

  @override
  $TripStatusCopyWith<$Res> get status;
  @override
  $PassengerEntityCopyWith<$Res> get passenger1;
}

/// @nodoc
class __$TripEntityCopyWithImpl<$Res> extends _$TripEntityCopyWithImpl<$Res>
    implements _$TripEntityCopyWith<$Res> {
  __$TripEntityCopyWithImpl(
      _TripEntity _value, $Res Function(_TripEntity) _then)
      : super(_value, (v) => _then(v as _TripEntity));

  @override
  _TripEntity get _value => super._value as _TripEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? passenger1 = freezed,
    Object? passenger2 = freezed,
    Object? driver = freezed,
    Object? startedTime = freezed,
    Object? endedTime = freezed,
  }) {
    return _then(_TripEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TripStatus,
      passenger1: passenger1 == freezed
          ? _value.passenger1
          : passenger1 // ignore: cast_nullable_to_non_nullable
              as PassengerEntity,
      passenger2: passenger2 == freezed
          ? _value.passenger2
          : passenger2 // ignore: cast_nullable_to_non_nullable
              as Option<PassengerEntity>,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Option<DriverEntity>,
      startedTime: startedTime == freezed
          ? _value.startedTime
          : startedTime // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      endedTime: endedTime == freezed
          ? _value.endedTime
          : endedTime // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
    ));
  }
}

/// @nodoc

class _$_TripEntity extends _TripEntity with DiagnosticableTreeMixin {
  _$_TripEntity(
      {required this.id,
      required this.status,
      required this.passenger1,
      required this.passenger2,
      required this.driver,
      required this.startedTime,
      required this.endedTime})
      : super._();

  @override
  final Option<String> id;
  @override

  /// This is important to determind the state of trip
  final TripStatus status;
  @override

  /// The first passenger who request this trip
  final PassengerEntity passenger1;
  @override

  /// If passenger 1 allow share taxi, this trip will be visible to other
  /// so passenger2 can request to this trip too
  final Option<PassengerEntity> passenger2;
  @override

  /// This will be none() when trip entity created
  /// And in picking state the driver will be some
  final Option<DriverEntity> driver;
  @override

  /// Started time since taxi riding to pick passenger
  /// This will be update to some() when taxi accepted and start picking up
  /// the passenger
  final Option<DateTime> startedTime;
  @override

  /// Ended time. Update when passenger1 and passenger2 status is both finished
  /// the trip
  final Option<DateTime> endedTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TripEntity(id: $id, status: $status, passenger1: $passenger1, passenger2: $passenger2, driver: $driver, startedTime: $startedTime, endedTime: $endedTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TripEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('passenger1', passenger1))
      ..add(DiagnosticsProperty('passenger2', passenger2))
      ..add(DiagnosticsProperty('driver', driver))
      ..add(DiagnosticsProperty('startedTime', startedTime))
      ..add(DiagnosticsProperty('endedTime', endedTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TripEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.passenger1, passenger1) &&
            const DeepCollectionEquality()
                .equals(other.passenger2, passenger2) &&
            const DeepCollectionEquality().equals(other.driver, driver) &&
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
      const DeepCollectionEquality().hash(driver),
      const DeepCollectionEquality().hash(startedTime),
      const DeepCollectionEquality().hash(endedTime));

  @JsonKey(ignore: true)
  @override
  _$TripEntityCopyWith<_TripEntity> get copyWith =>
      __$TripEntityCopyWithImpl<_TripEntity>(this, _$identity);
}

abstract class _TripEntity extends TripEntity {
  factory _TripEntity(
      {required Option<String> id,
      required TripStatus status,
      required PassengerEntity passenger1,
      required Option<PassengerEntity> passenger2,
      required Option<DriverEntity> driver,
      required Option<DateTime> startedTime,
      required Option<DateTime> endedTime}) = _$_TripEntity;
  _TripEntity._() : super._();

  @override
  Option<String> get id;
  @override

  /// This is important to determind the state of trip
  TripStatus get status;
  @override

  /// The first passenger who request this trip
  PassengerEntity get passenger1;
  @override

  /// If passenger 1 allow share taxi, this trip will be visible to other
  /// so passenger2 can request to this trip too
  Option<PassengerEntity> get passenger2;
  @override

  /// This will be none() when trip entity created
  /// And in picking state the driver will be some
  Option<DriverEntity> get driver;
  @override

  /// Started time since taxi riding to pick passenger
  /// This will be update to some() when taxi accepted and start picking up
  /// the passenger
  Option<DateTime> get startedTime;
  @override

  /// Ended time. Update when passenger1 and passenger2 status is both finished
  /// the trip
  Option<DateTime> get endedTime;
  @override
  @JsonKey(ignore: true)
  _$TripEntityCopyWith<_TripEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PassengerEntityTearOff {
  const _$PassengerEntityTearOff();

  _PassengerEntity call(
      {required UserEntity user,
      required String note,
      required bool allowToShare,
      required LocationPointDetail startedPositionDetail,
      required LocationPointDetail expectedEndedPositionDetail,
      required Option<LocationPointDetail> actualEndedPositionDetail}) {
    return _PassengerEntity(
      user: user,
      note: note,
      allowToShare: allowToShare,
      startedPositionDetail: startedPositionDetail,
      expectedEndedPositionDetail: expectedEndedPositionDetail,
      actualEndedPositionDetail: actualEndedPositionDetail,
    );
  }
}

/// @nodoc
const $PassengerEntity = _$PassengerEntityTearOff();

/// @nodoc
mixin _$PassengerEntity {
  UserEntity get user => throw _privateConstructorUsedError;

  /// Note user create for driver in this trip
  String get note => throw _privateConstructorUsedError;

  /// Allow trip to share or not
  bool get allowToShare => throw _privateConstructorUsedError;

  /// The started point when taxi picked up
  LocationPointDetail get startedPositionDetail =>
      throw _privateConstructorUsedError;

  /// Location where user want to go when booking
  LocationPointDetail get expectedEndedPositionDetail =>
      throw _privateConstructorUsedError;

  /// if user stop the trip in the middle way without reach destination
  Option<LocationPointDetail> get actualEndedPositionDetail =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PassengerEntityCopyWith<PassengerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassengerEntityCopyWith<$Res> {
  factory $PassengerEntityCopyWith(
          PassengerEntity value, $Res Function(PassengerEntity) then) =
      _$PassengerEntityCopyWithImpl<$Res>;
  $Res call(
      {UserEntity user,
      String note,
      bool allowToShare,
      LocationPointDetail startedPositionDetail,
      LocationPointDetail expectedEndedPositionDetail,
      Option<LocationPointDetail> actualEndedPositionDetail});

  $UserEntityCopyWith<$Res> get user;
  $LocationPointDetailCopyWith<$Res> get startedPositionDetail;
  $LocationPointDetailCopyWith<$Res> get expectedEndedPositionDetail;
}

/// @nodoc
class _$PassengerEntityCopyWithImpl<$Res>
    implements $PassengerEntityCopyWith<$Res> {
  _$PassengerEntityCopyWithImpl(this._value, this._then);

  final PassengerEntity _value;
  // ignore: unused_field
  final $Res Function(PassengerEntity) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? note = freezed,
    Object? allowToShare = freezed,
    Object? startedPositionDetail = freezed,
    Object? expectedEndedPositionDetail = freezed,
    Object? actualEndedPositionDetail = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      allowToShare: allowToShare == freezed
          ? _value.allowToShare
          : allowToShare // ignore: cast_nullable_to_non_nullable
              as bool,
      startedPositionDetail: startedPositionDetail == freezed
          ? _value.startedPositionDetail
          : startedPositionDetail // ignore: cast_nullable_to_non_nullable
              as LocationPointDetail,
      expectedEndedPositionDetail: expectedEndedPositionDetail == freezed
          ? _value.expectedEndedPositionDetail
          : expectedEndedPositionDetail // ignore: cast_nullable_to_non_nullable
              as LocationPointDetail,
      actualEndedPositionDetail: actualEndedPositionDetail == freezed
          ? _value.actualEndedPositionDetail
          : actualEndedPositionDetail // ignore: cast_nullable_to_non_nullable
              as Option<LocationPointDetail>,
    ));
  }

  @override
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $LocationPointDetailCopyWith<$Res> get startedPositionDetail {
    return $LocationPointDetailCopyWith<$Res>(_value.startedPositionDetail,
        (value) {
      return _then(_value.copyWith(startedPositionDetail: value));
    });
  }

  @override
  $LocationPointDetailCopyWith<$Res> get expectedEndedPositionDetail {
    return $LocationPointDetailCopyWith<$Res>(
        _value.expectedEndedPositionDetail, (value) {
      return _then(_value.copyWith(expectedEndedPositionDetail: value));
    });
  }
}

/// @nodoc
abstract class _$PassengerEntityCopyWith<$Res>
    implements $PassengerEntityCopyWith<$Res> {
  factory _$PassengerEntityCopyWith(
          _PassengerEntity value, $Res Function(_PassengerEntity) then) =
      __$PassengerEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserEntity user,
      String note,
      bool allowToShare,
      LocationPointDetail startedPositionDetail,
      LocationPointDetail expectedEndedPositionDetail,
      Option<LocationPointDetail> actualEndedPositionDetail});

  @override
  $UserEntityCopyWith<$Res> get user;
  @override
  $LocationPointDetailCopyWith<$Res> get startedPositionDetail;
  @override
  $LocationPointDetailCopyWith<$Res> get expectedEndedPositionDetail;
}

/// @nodoc
class __$PassengerEntityCopyWithImpl<$Res>
    extends _$PassengerEntityCopyWithImpl<$Res>
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
    Object? startedPositionDetail = freezed,
    Object? expectedEndedPositionDetail = freezed,
    Object? actualEndedPositionDetail = freezed,
  }) {
    return _then(_PassengerEntity(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      allowToShare: allowToShare == freezed
          ? _value.allowToShare
          : allowToShare // ignore: cast_nullable_to_non_nullable
              as bool,
      startedPositionDetail: startedPositionDetail == freezed
          ? _value.startedPositionDetail
          : startedPositionDetail // ignore: cast_nullable_to_non_nullable
              as LocationPointDetail,
      expectedEndedPositionDetail: expectedEndedPositionDetail == freezed
          ? _value.expectedEndedPositionDetail
          : expectedEndedPositionDetail // ignore: cast_nullable_to_non_nullable
              as LocationPointDetail,
      actualEndedPositionDetail: actualEndedPositionDetail == freezed
          ? _value.actualEndedPositionDetail
          : actualEndedPositionDetail // ignore: cast_nullable_to_non_nullable
              as Option<LocationPointDetail>,
    ));
  }
}

/// @nodoc

class _$_PassengerEntity
    with DiagnosticableTreeMixin
    implements _PassengerEntity {
  _$_PassengerEntity(
      {required this.user,
      required this.note,
      required this.allowToShare,
      required this.startedPositionDetail,
      required this.expectedEndedPositionDetail,
      required this.actualEndedPositionDetail});

  @override
  final UserEntity user;
  @override

  /// Note user create for driver in this trip
  final String note;
  @override

  /// Allow trip to share or not
  final bool allowToShare;
  @override

  /// The started point when taxi picked up
  final LocationPointDetail startedPositionDetail;
  @override

  /// Location where user want to go when booking
  final LocationPointDetail expectedEndedPositionDetail;
  @override

  /// if user stop the trip in the middle way without reach destination
  final Option<LocationPointDetail> actualEndedPositionDetail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PassengerEntity(user: $user, note: $note, allowToShare: $allowToShare, startedPositionDetail: $startedPositionDetail, expectedEndedPositionDetail: $expectedEndedPositionDetail, actualEndedPositionDetail: $actualEndedPositionDetail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PassengerEntity'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('allowToShare', allowToShare))
      ..add(DiagnosticsProperty('startedPositionDetail', startedPositionDetail))
      ..add(DiagnosticsProperty(
          'expectedEndedPositionDetail', expectedEndedPositionDetail))
      ..add(DiagnosticsProperty(
          'actualEndedPositionDetail', actualEndedPositionDetail));
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
                .equals(other.startedPositionDetail, startedPositionDetail) &&
            const DeepCollectionEquality().equals(
                other.expectedEndedPositionDetail,
                expectedEndedPositionDetail) &&
            const DeepCollectionEquality().equals(
                other.actualEndedPositionDetail, actualEndedPositionDetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(allowToShare),
      const DeepCollectionEquality().hash(startedPositionDetail),
      const DeepCollectionEquality().hash(expectedEndedPositionDetail),
      const DeepCollectionEquality().hash(actualEndedPositionDetail));

  @JsonKey(ignore: true)
  @override
  _$PassengerEntityCopyWith<_PassengerEntity> get copyWith =>
      __$PassengerEntityCopyWithImpl<_PassengerEntity>(this, _$identity);
}

abstract class _PassengerEntity implements PassengerEntity {
  factory _PassengerEntity(
          {required UserEntity user,
          required String note,
          required bool allowToShare,
          required LocationPointDetail startedPositionDetail,
          required LocationPointDetail expectedEndedPositionDetail,
          required Option<LocationPointDetail> actualEndedPositionDetail}) =
      _$_PassengerEntity;

  @override
  UserEntity get user;
  @override

  /// Note user create for driver in this trip
  String get note;
  @override

  /// Allow trip to share or not
  bool get allowToShare;
  @override

  /// The started point when taxi picked up
  LocationPointDetail get startedPositionDetail;
  @override

  /// Location where user want to go when booking
  LocationPointDetail get expectedEndedPositionDetail;
  @override

  /// if user stop the trip in the middle way without reach destination
  Option<LocationPointDetail> get actualEndedPositionDetail;
  @override
  @JsonKey(ignore: true)
  _$PassengerEntityCopyWith<_PassengerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TripStatusTearOff {
  const _$TripStatusTearOff();

  _TripStatus call(String value) {
    return _TripStatus(
      value,
    );
  }
}

/// @nodoc
const $TripStatus = _$TripStatusTearOff();

/// @nodoc
mixin _$TripStatus {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripStatusCopyWith<TripStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripStatusCopyWith<$Res> {
  factory $TripStatusCopyWith(
          TripStatus value, $Res Function(TripStatus) then) =
      _$TripStatusCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$TripStatusCopyWithImpl<$Res> implements $TripStatusCopyWith<$Res> {
  _$TripStatusCopyWithImpl(this._value, this._then);

  final TripStatus _value;
  // ignore: unused_field
  final $Res Function(TripStatus) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TripStatusCopyWith<$Res> implements $TripStatusCopyWith<$Res> {
  factory _$TripStatusCopyWith(
          _TripStatus value, $Res Function(_TripStatus) then) =
      __$TripStatusCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$TripStatusCopyWithImpl<$Res> extends _$TripStatusCopyWithImpl<$Res>
    implements _$TripStatusCopyWith<$Res> {
  __$TripStatusCopyWithImpl(
      _TripStatus _value, $Res Function(_TripStatus) _then)
      : super(_value, (v) => _then(v as _TripStatus));

  @override
  _TripStatus get _value => super._value as _TripStatus;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_TripStatus(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TripStatus with DiagnosticableTreeMixin implements _TripStatus {
  _$_TripStatus(this.value);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TripStatus(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TripStatus'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TripStatus &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$TripStatusCopyWith<_TripStatus> get copyWith =>
      __$TripStatusCopyWithImpl<_TripStatus>(this, _$identity);
}

abstract class _TripStatus implements TripStatus {
  factory _TripStatus(String value) = _$_TripStatus;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$TripStatusCopyWith<_TripStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
