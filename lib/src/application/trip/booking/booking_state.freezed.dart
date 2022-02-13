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
      {required PassengerEntity passengerEntity, bool isLoading = false}) {
    return _BookingState(
      passengerEntity: passengerEntity,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $BookingState = _$BookingStateTearOff();

/// @nodoc
mixin _$BookingState {
  PassengerEntity get passengerEntity => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingStateCopyWith<BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res>;
  $Res call({PassengerEntity passengerEntity, bool isLoading});

  $PassengerEntityCopyWith<$Res> get passengerEntity;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res> implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  final BookingState _value;
  // ignore: unused_field
  final $Res Function(BookingState) _then;

  @override
  $Res call({
    Object? passengerEntity = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      passengerEntity: passengerEntity == freezed
          ? _value.passengerEntity
          : passengerEntity // ignore: cast_nullable_to_non_nullable
              as PassengerEntity,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $PassengerEntityCopyWith<$Res> get passengerEntity {
    return $PassengerEntityCopyWith<$Res>(_value.passengerEntity, (value) {
      return _then(_value.copyWith(passengerEntity: value));
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
  $Res call({PassengerEntity passengerEntity, bool isLoading});

  @override
  $PassengerEntityCopyWith<$Res> get passengerEntity;
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
    Object? passengerEntity = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_BookingState(
      passengerEntity: passengerEntity == freezed
          ? _value.passengerEntity
          : passengerEntity // ignore: cast_nullable_to_non_nullable
              as PassengerEntity,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BookingState extends _BookingState {
  _$_BookingState({required this.passengerEntity, this.isLoading = false})
      : super._();

  @override
  final PassengerEntity passengerEntity;
  @JsonKey()
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'BookingState(passengerEntity: $passengerEntity, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookingState &&
            const DeepCollectionEquality()
                .equals(other.passengerEntity, passengerEntity) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(passengerEntity),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$BookingStateCopyWith<_BookingState> get copyWith =>
      __$BookingStateCopyWithImpl<_BookingState>(this, _$identity);
}

abstract class _BookingState extends BookingState {
  factory _BookingState(
      {required PassengerEntity passengerEntity,
      bool isLoading}) = _$_BookingState;
  _BookingState._() : super._();

  @override
  PassengerEntity get passengerEntity;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$BookingStateCopyWith<_BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
