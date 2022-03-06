// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'driver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DriverTearOff {
  const _$DriverTearOff();

  _Driver call(
      {required String? id,
      required String fullname,
      required bool available,
      required Option<LocationDetail> location,
      required VehicleTypes vehicleType,
      required Option<String> inProgressTrip}) {
    return _Driver(
      id: id,
      fullname: fullname,
      available: available,
      location: location,
      vehicleType: vehicleType,
      inProgressTrip: inProgressTrip,
    );
  }
}

/// @nodoc
const $Driver = _$DriverTearOff();

/// @nodoc
mixin _$Driver {
  String? get id => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;

  /// Make driver visible to map or not. There are two way to toggle this:
  /// - one is when driver turn it off or on manualy
  /// - second is automatic turn off or on when driver is in the trip. this
  /// will update from passenger entity call
  /// When trip finished (if available) this will update to true automatically
  /// unless driver turn it of manualy
  bool get available => throw _privateConstructorUsedError;

  /// This is the location of driver. To improve app performance and battery
  /// This only update when meet the condition, not update everytime
  /// My idea is to update it every defined meter and also when driver available
  /// is set to true. Note that: when in a trip, instead of using firestore
  /// I gonna use firebase realtime database instead. beacause it is cheap
  /// and not count bill on read/write like firestore. this mean that when
  /// driver [available] is false and [inProgressTrip] is true, update user
  /// location in real-time to database
  Option<LocationDetail> get location => throw _privateConstructorUsedError;

  /// Vihicle type of taxi.
  ///
  /// This will be use to query in database. Allow user to find correct vehicle
  /// type they want, also help to find trip request which need this type of
  /// vehicle
  VehicleTypes get vehicleType => throw _privateConstructorUsedError;

  /// This return some() when driver is attach to a trip, mean he is accepted
  /// a trip from user request. When trip ended this will update to none();
  /// This will be use to fetch the trip request entity to show on screen
  Option<String> get inProgressTrip => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriverCopyWith<Driver> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverCopyWith<$Res> {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) then) =
      _$DriverCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String fullname,
      bool available,
      Option<LocationDetail> location,
      VehicleTypes vehicleType,
      Option<String> inProgressTrip});
}

/// @nodoc
class _$DriverCopyWithImpl<$Res> implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._value, this._then);

  final Driver _value;
  // ignore: unused_field
  final $Res Function(Driver) _then;

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
              as Option<LocationDetail>,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleTypes,
      inProgressTrip: inProgressTrip == freezed
          ? _value.inProgressTrip
          : inProgressTrip // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$DriverCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$DriverCopyWith(_Driver value, $Res Function(_Driver) then) =
      __$DriverCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String fullname,
      bool available,
      Option<LocationDetail> location,
      VehicleTypes vehicleType,
      Option<String> inProgressTrip});
}

/// @nodoc
class __$DriverCopyWithImpl<$Res> extends _$DriverCopyWithImpl<$Res>
    implements _$DriverCopyWith<$Res> {
  __$DriverCopyWithImpl(_Driver _value, $Res Function(_Driver) _then)
      : super(_value, (v) => _then(v as _Driver));

  @override
  _Driver get _value => super._value as _Driver;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? available = freezed,
    Object? location = freezed,
    Object? vehicleType = freezed,
    Object? inProgressTrip = freezed,
  }) {
    return _then(_Driver(
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
              as Option<LocationDetail>,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleTypes,
      inProgressTrip: inProgressTrip == freezed
          ? _value.inProgressTrip
          : inProgressTrip // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_Driver extends _Driver {
  _$_Driver(
      {required this.id,
      required this.fullname,
      required this.available,
      required this.location,
      required this.vehicleType,
      required this.inProgressTrip})
      : super._();

  @override
  final String? id;
  @override
  final String fullname;
  @override

  /// Make driver visible to map or not. There are two way to toggle this:
  /// - one is when driver turn it off or on manualy
  /// - second is automatic turn off or on when driver is in the trip. this
  /// will update from passenger entity call
  /// When trip finished (if available) this will update to true automatically
  /// unless driver turn it of manualy
  final bool available;
  @override

  /// This is the location of driver. To improve app performance and battery
  /// This only update when meet the condition, not update everytime
  /// My idea is to update it every defined meter and also when driver available
  /// is set to true. Note that: when in a trip, instead of using firestore
  /// I gonna use firebase realtime database instead. beacause it is cheap
  /// and not count bill on read/write like firestore. this mean that when
  /// driver [available] is false and [inProgressTrip] is true, update user
  /// location in real-time to database
  final Option<LocationDetail> location;
  @override

  /// Vihicle type of taxi.
  ///
  /// This will be use to query in database. Allow user to find correct vehicle
  /// type they want, also help to find trip request which need this type of
  /// vehicle
  final VehicleTypes vehicleType;
  @override

  /// This return some() when driver is attach to a trip, mean he is accepted
  /// a trip from user request. When trip ended this will update to none();
  /// This will be use to fetch the trip request entity to show on screen
  final Option<String> inProgressTrip;

  @override
  String toString() {
    return 'Driver(id: $id, fullname: $fullname, available: $available, location: $location, vehicleType: $vehicleType, inProgressTrip: $inProgressTrip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Driver &&
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
  _$DriverCopyWith<_Driver> get copyWith =>
      __$DriverCopyWithImpl<_Driver>(this, _$identity);
}

abstract class _Driver extends Driver {
  factory _Driver(
      {required String? id,
      required String fullname,
      required bool available,
      required Option<LocationDetail> location,
      required VehicleTypes vehicleType,
      required Option<String> inProgressTrip}) = _$_Driver;
  _Driver._() : super._();

  @override
  String? get id;
  @override
  String get fullname;
  @override

  /// Make driver visible to map or not. There are two way to toggle this:
  /// - one is when driver turn it off or on manualy
  /// - second is automatic turn off or on when driver is in the trip. this
  /// will update from passenger entity call
  /// When trip finished (if available) this will update to true automatically
  /// unless driver turn it of manualy
  bool get available;
  @override

  /// This is the location of driver. To improve app performance and battery
  /// This only update when meet the condition, not update everytime
  /// My idea is to update it every defined meter and also when driver available
  /// is set to true. Note that: when in a trip, instead of using firestore
  /// I gonna use firebase realtime database instead. beacause it is cheap
  /// and not count bill on read/write like firestore. this mean that when
  /// driver [available] is false and [inProgressTrip] is true, update user
  /// location in real-time to database
  Option<LocationDetail> get location;
  @override

  /// Vihicle type of taxi.
  ///
  /// This will be use to query in database. Allow user to find correct vehicle
  /// type they want, also help to find trip request which need this type of
  /// vehicle
  VehicleTypes get vehicleType;
  @override

  /// This return some() when driver is attach to a trip, mean he is accepted
  /// a trip from user request. When trip ended this will update to none();
  /// This will be use to fetch the trip request entity to show on screen
  Option<String> get inProgressTrip;
  @override
  @JsonKey(ignore: true)
  _$DriverCopyWith<_Driver> get copyWith => throw _privateConstructorUsedError;
}
