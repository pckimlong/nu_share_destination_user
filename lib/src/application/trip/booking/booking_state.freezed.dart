// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookingStateTearOff {
  const _$BookingStateTearOff();

  _BookingState call(
      {required UserEntity user,
      required Option<String> note,
      required Option<VehicleTypes> vehicleTypes,
      bool allowShare = false,
      required Option<LocationPointDetail> startedPositionDetail,
      required Option<LocationPointDetail> expectedEndedPositionDetail,
      bool isLoading = false,
      required Option<String> errorMessage}) {
    return _BookingState(
      user: user,
      note: note,
      vehicleTypes: vehicleTypes,
      allowShare: allowShare,
      startedPositionDetail: startedPositionDetail,
      expectedEndedPositionDetail: expectedEndedPositionDetail,
      isLoading: isLoading,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $BookingState = _$BookingStateTearOff();

/// @nodoc
mixin _$BookingState {
  UserEntity get user => throw _privateConstructorUsedError;
  Option<String> get note => throw _privateConstructorUsedError;
  Option<VehicleTypes> get vehicleTypes => throw _privateConstructorUsedError;
  bool get allowShare => throw _privateConstructorUsedError;
  Option<LocationPointDetail> get startedPositionDetail =>
      throw _privateConstructorUsedError;
  Option<LocationPointDetail> get expectedEndedPositionDetail =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingStateCopyWith<BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res>;
  $Res call(
      {UserEntity user,
      Option<String> note,
      Option<VehicleTypes> vehicleTypes,
      bool allowShare,
      Option<LocationPointDetail> startedPositionDetail,
      Option<LocationPointDetail> expectedEndedPositionDetail,
      bool isLoading,
      Option<String> errorMessage});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res> implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  final BookingState _value;
  // ignore: unused_field
  final $Res Function(BookingState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? note = freezed,
    Object? vehicleTypes = freezed,
    Object? allowShare = freezed,
    Object? startedPositionDetail = freezed,
    Object? expectedEndedPositionDetail = freezed,
    Object? isLoading = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      vehicleTypes: vehicleTypes == freezed
          ? _value.vehicleTypes
          : vehicleTypes // ignore: cast_nullable_to_non_nullable
              as Option<VehicleTypes>,
      allowShare: allowShare == freezed
          ? _value.allowShare
          : allowShare // ignore: cast_nullable_to_non_nullable
              as bool,
      startedPositionDetail: startedPositionDetail == freezed
          ? _value.startedPositionDetail
          : startedPositionDetail // ignore: cast_nullable_to_non_nullable
              as Option<LocationPointDetail>,
      expectedEndedPositionDetail: expectedEndedPositionDetail == freezed
          ? _value.expectedEndedPositionDetail
          : expectedEndedPositionDetail // ignore: cast_nullable_to_non_nullable
              as Option<LocationPointDetail>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }

  @override
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$BookingStateCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$BookingStateCopyWith(
          _BookingState value, $Res Function(_BookingState) then) =
      __$BookingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserEntity user,
      Option<String> note,
      Option<VehicleTypes> vehicleTypes,
      bool allowShare,
      Option<LocationPointDetail> startedPositionDetail,
      Option<LocationPointDetail> expectedEndedPositionDetail,
      bool isLoading,
      Option<String> errorMessage});

  @override
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$BookingStateCopyWithImpl<$Res> extends _$BookingStateCopyWithImpl<$Res>
    implements _$BookingStateCopyWith<$Res> {
  __$BookingStateCopyWithImpl(
      _BookingState _value, $Res Function(_BookingState) _then)
      : super(_value, (v) => _then(v as _BookingState));

  @override
  _BookingState get _value => super._value as _BookingState;

  @override
  $Res call({
    Object? user = freezed,
    Object? note = freezed,
    Object? vehicleTypes = freezed,
    Object? allowShare = freezed,
    Object? startedPositionDetail = freezed,
    Object? expectedEndedPositionDetail = freezed,
    Object? isLoading = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_BookingState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      vehicleTypes: vehicleTypes == freezed
          ? _value.vehicleTypes
          : vehicleTypes // ignore: cast_nullable_to_non_nullable
              as Option<VehicleTypes>,
      allowShare: allowShare == freezed
          ? _value.allowShare
          : allowShare // ignore: cast_nullable_to_non_nullable
              as bool,
      startedPositionDetail: startedPositionDetail == freezed
          ? _value.startedPositionDetail
          : startedPositionDetail // ignore: cast_nullable_to_non_nullable
              as Option<LocationPointDetail>,
      expectedEndedPositionDetail: expectedEndedPositionDetail == freezed
          ? _value.expectedEndedPositionDetail
          : expectedEndedPositionDetail // ignore: cast_nullable_to_non_nullable
              as Option<LocationPointDetail>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_BookingState extends _BookingState {
  _$_BookingState(
      {required this.user,
      required this.note,
      required this.vehicleTypes,
      this.allowShare = false,
      required this.startedPositionDetail,
      required this.expectedEndedPositionDetail,
      this.isLoading = false,
      required this.errorMessage})
      : super._();

  @override
  final UserEntity user;
  @override
  final Option<String> note;
  @override
  final Option<VehicleTypes> vehicleTypes;
  @JsonKey()
  @override
  final bool allowShare;
  @override
  final Option<LocationPointDetail> startedPositionDetail;
  @override
  final Option<LocationPointDetail> expectedEndedPositionDetail;
  @JsonKey()
  @override
  final bool isLoading;
  @override
  final Option<String> errorMessage;

  @override
  String toString() {
    return 'BookingState(user: $user, note: $note, vehicleTypes: $vehicleTypes, allowShare: $allowShare, startedPositionDetail: $startedPositionDetail, expectedEndedPositionDetail: $expectedEndedPositionDetail, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookingState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality()
                .equals(other.vehicleTypes, vehicleTypes) &&
            const DeepCollectionEquality()
                .equals(other.allowShare, allowShare) &&
            const DeepCollectionEquality()
                .equals(other.startedPositionDetail, startedPositionDetail) &&
            const DeepCollectionEquality().equals(
                other.expectedEndedPositionDetail,
                expectedEndedPositionDetail) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(vehicleTypes),
      const DeepCollectionEquality().hash(allowShare),
      const DeepCollectionEquality().hash(startedPositionDetail),
      const DeepCollectionEquality().hash(expectedEndedPositionDetail),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$BookingStateCopyWith<_BookingState> get copyWith =>
      __$BookingStateCopyWithImpl<_BookingState>(this, _$identity);
}

abstract class _BookingState extends BookingState {
  factory _BookingState(
      {required UserEntity user,
      required Option<String> note,
      required Option<VehicleTypes> vehicleTypes,
      bool allowShare,
      required Option<LocationPointDetail> startedPositionDetail,
      required Option<LocationPointDetail> expectedEndedPositionDetail,
      bool isLoading,
      required Option<String> errorMessage}) = _$_BookingState;
  _BookingState._() : super._();

  @override
  UserEntity get user;
  @override
  Option<String> get note;
  @override
  Option<VehicleTypes> get vehicleTypes;
  @override
  bool get allowShare;
  @override
  Option<LocationPointDetail> get startedPositionDetail;
  @override
  Option<LocationPointDetail> get expectedEndedPositionDetail;
  @override
  bool get isLoading;
  @override
  Option<String> get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$BookingStateCopyWith<_BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
