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

/// @nodoc
class _$PassengerTearOff {
  const _$PassengerTearOff();

  _Passenger call(
      {required User user,
      required String note,
      required bool allowToShare,
      required LocationAddress originLocation,
      required Option<LocationAddress> destinationLocation,
      required Option<LocationAddress> actualDestinationLocation}) {
    return _Passenger(
      user: user,
      note: note,
      allowToShare: allowToShare,
      originLocation: originLocation,
      destinationLocation: destinationLocation,
      actualDestinationLocation: actualDestinationLocation,
    );
  }
}

/// @nodoc
const $Passenger = _$PassengerTearOff();

/// @nodoc
mixin _$Passenger {
  User get user => throw _privateConstructorUsedError;

  /// Note user create for driver in this trip
  String get note => throw _privateConstructorUsedError;

  /// Allow trip to share or not
  bool get allowToShare => throw _privateConstructorUsedError;

  /// The started point when taxi picked up
  LocationAddress get originLocation => throw _privateConstructorUsedError;

  /// Location where user want to go when booking
  ///todo: multiple location - will update in the next version
  Option<LocationAddress> get destinationLocation =>
      throw _privateConstructorUsedError;

  /// if user stop the trip in the middle way without reach destination
  Option<LocationAddress> get actualDestinationLocation =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PassengerCopyWith<Passenger> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassengerCopyWith<$Res> {
  factory $PassengerCopyWith(Passenger value, $Res Function(Passenger) then) =
      _$PassengerCopyWithImpl<$Res>;
  $Res call(
      {User user,
      String note,
      bool allowToShare,
      LocationAddress originLocation,
      Option<LocationAddress> destinationLocation,
      Option<LocationAddress> actualDestinationLocation});

  $UserCopyWith<$Res> get user;
  $LocationAddressCopyWith<$Res> get originLocation;
}

/// @nodoc
class _$PassengerCopyWithImpl<$Res> implements $PassengerCopyWith<$Res> {
  _$PassengerCopyWithImpl(this._value, this._then);

  final Passenger _value;
  // ignore: unused_field
  final $Res Function(Passenger) _then;

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
              as User,
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
              as Option<LocationAddress>,
      actualDestinationLocation: actualDestinationLocation == freezed
          ? _value.actualDestinationLocation
          : actualDestinationLocation // ignore: cast_nullable_to_non_nullable
              as Option<LocationAddress>,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $LocationAddressCopyWith<$Res> get originLocation {
    return $LocationAddressCopyWith<$Res>(_value.originLocation, (value) {
      return _then(_value.copyWith(originLocation: value));
    });
  }
}

/// @nodoc
abstract class _$PassengerCopyWith<$Res> implements $PassengerCopyWith<$Res> {
  factory _$PassengerCopyWith(
          _Passenger value, $Res Function(_Passenger) then) =
      __$PassengerCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user,
      String note,
      bool allowToShare,
      LocationAddress originLocation,
      Option<LocationAddress> destinationLocation,
      Option<LocationAddress> actualDestinationLocation});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $LocationAddressCopyWith<$Res> get originLocation;
}

/// @nodoc
class __$PassengerCopyWithImpl<$Res> extends _$PassengerCopyWithImpl<$Res>
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
              as User,
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
              as Option<LocationAddress>,
      actualDestinationLocation: actualDestinationLocation == freezed
          ? _value.actualDestinationLocation
          : actualDestinationLocation // ignore: cast_nullable_to_non_nullable
              as Option<LocationAddress>,
    ));
  }
}

/// @nodoc

class _$_Passenger implements _Passenger {
  _$_Passenger(
      {required this.user,
      required this.note,
      required this.allowToShare,
      required this.originLocation,
      required this.destinationLocation,
      required this.actualDestinationLocation});

  @override
  final User user;
  @override

  /// Note user create for driver in this trip
  final String note;
  @override

  /// Allow trip to share or not
  final bool allowToShare;
  @override

  /// The started point when taxi picked up
  final LocationAddress originLocation;
  @override

  /// Location where user want to go when booking
  ///todo: multiple location - will update in the next version
  final Option<LocationAddress> destinationLocation;
  @override

  /// if user stop the trip in the middle way without reach destination
  final Option<LocationAddress> actualDestinationLocation;

  @override
  String toString() {
    return 'Passenger(user: $user, note: $note, allowToShare: $allowToShare, originLocation: $originLocation, destinationLocation: $destinationLocation, actualDestinationLocation: $actualDestinationLocation)';
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
}

abstract class _Passenger implements Passenger {
  factory _Passenger(
          {required User user,
          required String note,
          required bool allowToShare,
          required LocationAddress originLocation,
          required Option<LocationAddress> destinationLocation,
          required Option<LocationAddress> actualDestinationLocation}) =
      _$_Passenger;

  @override
  User get user;
  @override

  /// Note user create for driver in this trip
  String get note;
  @override

  /// Allow trip to share or not
  bool get allowToShare;
  @override

  /// The started point when taxi picked up
  LocationAddress get originLocation;
  @override

  /// Location where user want to go when booking
  ///todo: multiple location - will update in the next version
  Option<LocationAddress> get destinationLocation;
  @override

  /// if user stop the trip in the middle way without reach destination
  Option<LocationAddress> get actualDestinationLocation;
  @override
  @JsonKey(ignore: true)
  _$PassengerCopyWith<_Passenger> get copyWith =>
      throw _privateConstructorUsedError;
}
