// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailuresTearOff {
  const _$ValueFailuresTearOff();

  EmptyString<T> emptyString<T>() {
    return EmptyString<T>();
  }

  TimeIsInFuture<T> timeIsInFuture<T>(DateTime now, T future) {
    return TimeIsInFuture<T>(
      now,
      future,
    );
  }
}

/// @nodoc
const $ValueFailures = _$ValueFailuresTearOff();

/// @nodoc
mixin _$ValueFailures<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyString,
    required TResult Function(DateTime now, T future) timeIsInFuture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyString,
    TResult Function(DateTime now, T future)? timeIsInFuture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyString,
    TResult Function(DateTime now, T future)? timeIsInFuture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyString<T> value) emptyString,
    required TResult Function(TimeIsInFuture<T> value) timeIsInFuture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyString<T> value)? emptyString,
    TResult Function(TimeIsInFuture<T> value)? timeIsInFuture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyString<T> value)? emptyString,
    TResult Function(TimeIsInFuture<T> value)? timeIsInFuture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailuresCopyWith<T, $Res> {
  factory $ValueFailuresCopyWith(
          ValueFailures<T> value, $Res Function(ValueFailures<T>) then) =
      _$ValueFailuresCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailuresCopyWithImpl<T, $Res>
    implements $ValueFailuresCopyWith<T, $Res> {
  _$ValueFailuresCopyWithImpl(this._value, this._then);

  final ValueFailures<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailures<T>) _then;
}

/// @nodoc
abstract class $EmptyStringCopyWith<T, $Res> {
  factory $EmptyStringCopyWith(
          EmptyString<T> value, $Res Function(EmptyString<T>) then) =
      _$EmptyStringCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$EmptyStringCopyWithImpl<T, $Res>
    extends _$ValueFailuresCopyWithImpl<T, $Res>
    implements $EmptyStringCopyWith<T, $Res> {
  _$EmptyStringCopyWithImpl(
      EmptyString<T> _value, $Res Function(EmptyString<T>) _then)
      : super(_value, (v) => _then(v as EmptyString<T>));

  @override
  EmptyString<T> get _value => super._value as EmptyString<T>;
}

/// @nodoc

class _$EmptyString<T> implements EmptyString<T> {
  const _$EmptyString();

  @override
  String toString() {
    return 'ValueFailures<$T>.emptyString()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmptyString<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyString,
    required TResult Function(DateTime now, T future) timeIsInFuture,
  }) {
    return emptyString();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyString,
    TResult Function(DateTime now, T future)? timeIsInFuture,
  }) {
    return emptyString?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyString,
    TResult Function(DateTime now, T future)? timeIsInFuture,
    required TResult orElse(),
  }) {
    if (emptyString != null) {
      return emptyString();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyString<T> value) emptyString,
    required TResult Function(TimeIsInFuture<T> value) timeIsInFuture,
  }) {
    return emptyString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyString<T> value)? emptyString,
    TResult Function(TimeIsInFuture<T> value)? timeIsInFuture,
  }) {
    return emptyString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyString<T> value)? emptyString,
    TResult Function(TimeIsInFuture<T> value)? timeIsInFuture,
    required TResult orElse(),
  }) {
    if (emptyString != null) {
      return emptyString(this);
    }
    return orElse();
  }
}

abstract class EmptyString<T> implements ValueFailures<T> {
  const factory EmptyString() = _$EmptyString<T>;
}

/// @nodoc
abstract class $TimeIsInFutureCopyWith<T, $Res> {
  factory $TimeIsInFutureCopyWith(
          TimeIsInFuture<T> value, $Res Function(TimeIsInFuture<T>) then) =
      _$TimeIsInFutureCopyWithImpl<T, $Res>;
  $Res call({DateTime now, T future});
}

/// @nodoc
class _$TimeIsInFutureCopyWithImpl<T, $Res>
    extends _$ValueFailuresCopyWithImpl<T, $Res>
    implements $TimeIsInFutureCopyWith<T, $Res> {
  _$TimeIsInFutureCopyWithImpl(
      TimeIsInFuture<T> _value, $Res Function(TimeIsInFuture<T>) _then)
      : super(_value, (v) => _then(v as TimeIsInFuture<T>));

  @override
  TimeIsInFuture<T> get _value => super._value as TimeIsInFuture<T>;

  @override
  $Res call({
    Object? now = freezed,
    Object? future = freezed,
  }) {
    return _then(TimeIsInFuture<T>(
      now == freezed
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as DateTime,
      future == freezed
          ? _value.future
          : future // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$TimeIsInFuture<T> implements TimeIsInFuture<T> {
  const _$TimeIsInFuture(this.now, this.future);

  @override
  final DateTime now;
  @override
  final T future;

  @override
  String toString() {
    return 'ValueFailures<$T>.timeIsInFuture(now: $now, future: $future)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimeIsInFuture<T> &&
            const DeepCollectionEquality().equals(other.now, now) &&
            const DeepCollectionEquality().equals(other.future, future));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(now),
      const DeepCollectionEquality().hash(future));

  @JsonKey(ignore: true)
  @override
  $TimeIsInFutureCopyWith<T, TimeIsInFuture<T>> get copyWith =>
      _$TimeIsInFutureCopyWithImpl<T, TimeIsInFuture<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyString,
    required TResult Function(DateTime now, T future) timeIsInFuture,
  }) {
    return timeIsInFuture(now, future);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyString,
    TResult Function(DateTime now, T future)? timeIsInFuture,
  }) {
    return timeIsInFuture?.call(now, future);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyString,
    TResult Function(DateTime now, T future)? timeIsInFuture,
    required TResult orElse(),
  }) {
    if (timeIsInFuture != null) {
      return timeIsInFuture(now, future);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyString<T> value) emptyString,
    required TResult Function(TimeIsInFuture<T> value) timeIsInFuture,
  }) {
    return timeIsInFuture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyString<T> value)? emptyString,
    TResult Function(TimeIsInFuture<T> value)? timeIsInFuture,
  }) {
    return timeIsInFuture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyString<T> value)? emptyString,
    TResult Function(TimeIsInFuture<T> value)? timeIsInFuture,
    required TResult orElse(),
  }) {
    if (timeIsInFuture != null) {
      return timeIsInFuture(this);
    }
    return orElse();
  }
}

abstract class TimeIsInFuture<T> implements ValueFailures<T> {
  const factory TimeIsInFuture(DateTime now, T future) = _$TimeIsInFuture<T>;

  DateTime get now;
  T get future;
  @JsonKey(ignore: true)
  $TimeIsInFutureCopyWith<T, TimeIsInFuture<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
