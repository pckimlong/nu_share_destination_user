// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthUserEntityTearOff {
  const _$AuthUserEntityTearOff();

  _AuthUserEntity call(
      {required String? uid,
      required String? fullname,
      required String? email,
      required bool? emailVerified,
      required String? phoneNumber,
      required String? photoURL}) {
    return _AuthUserEntity(
      uid: uid,
      fullname: fullname,
      email: email,
      emailVerified: emailVerified,
      phoneNumber: phoneNumber,
      photoURL: photoURL,
    );
  }
}

/// @nodoc
const $AuthUserEntity = _$AuthUserEntityTearOff();

/// @nodoc
mixin _$AuthUserEntity {
  String? get uid => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool? get emailVerified => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthUserEntityCopyWith<AuthUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserEntityCopyWith<$Res> {
  factory $AuthUserEntityCopyWith(
          AuthUserEntity value, $Res Function(AuthUserEntity) then) =
      _$AuthUserEntityCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      String? fullname,
      String? email,
      bool? emailVerified,
      String? phoneNumber,
      String? photoURL});
}

/// @nodoc
class _$AuthUserEntityCopyWithImpl<$Res>
    implements $AuthUserEntityCopyWith<$Res> {
  _$AuthUserEntityCopyWithImpl(this._value, this._then);

  final AuthUserEntity _value;
  // ignore: unused_field
  final $Res Function(AuthUserEntity) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? emailVerified = freezed,
    Object? phoneNumber = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AuthUserEntityCopyWith<$Res>
    implements $AuthUserEntityCopyWith<$Res> {
  factory _$AuthUserEntityCopyWith(
          _AuthUserEntity value, $Res Function(_AuthUserEntity) then) =
      __$AuthUserEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      String? fullname,
      String? email,
      bool? emailVerified,
      String? phoneNumber,
      String? photoURL});
}

/// @nodoc
class __$AuthUserEntityCopyWithImpl<$Res>
    extends _$AuthUserEntityCopyWithImpl<$Res>
    implements _$AuthUserEntityCopyWith<$Res> {
  __$AuthUserEntityCopyWithImpl(
      _AuthUserEntity _value, $Res Function(_AuthUserEntity) _then)
      : super(_value, (v) => _then(v as _AuthUserEntity));

  @override
  _AuthUserEntity get _value => super._value as _AuthUserEntity;

  @override
  $Res call({
    Object? uid = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? emailVerified = freezed,
    Object? phoneNumber = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_AuthUserEntity(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthUserEntity implements _AuthUserEntity {
  _$_AuthUserEntity(
      {required this.uid,
      required this.fullname,
      required this.email,
      required this.emailVerified,
      required this.phoneNumber,
      required this.photoURL});

  @override
  final String? uid;
  @override
  final String? fullname;
  @override
  final String? email;
  @override
  final bool? emailVerified;
  @override
  final String? phoneNumber;
  @override
  final String? photoURL;

  @override
  String toString() {
    return 'AuthUserEntity(uid: $uid, fullname: $fullname, email: $email, emailVerified: $emailVerified, phoneNumber: $phoneNumber, photoURL: $photoURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthUserEntity &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.fullname, fullname) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.emailVerified, emailVerified) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.photoURL, photoURL));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(fullname),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(emailVerified),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(photoURL));

  @JsonKey(ignore: true)
  @override
  _$AuthUserEntityCopyWith<_AuthUserEntity> get copyWith =>
      __$AuthUserEntityCopyWithImpl<_AuthUserEntity>(this, _$identity);
}

abstract class _AuthUserEntity implements AuthUserEntity {
  factory _AuthUserEntity(
      {required String? uid,
      required String? fullname,
      required String? email,
      required bool? emailVerified,
      required String? phoneNumber,
      required String? photoURL}) = _$_AuthUserEntity;

  @override
  String? get uid;
  @override
  String? get fullname;
  @override
  String? get email;
  @override
  bool? get emailVerified;
  @override
  String? get phoneNumber;
  @override
  String? get photoURL;
  @override
  @JsonKey(ignore: true)
  _$AuthUserEntityCopyWith<_AuthUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
