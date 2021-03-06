// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

  _UserDto call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: UserDto.fullnameKey) String fullname = '',
      @JsonKey(name: UserDto.dateOfBirthKey) DateTime? dateOfBirth,
      @JsonKey(name: UserDto.emailKey) String? email,
      @JsonKey(name: UserDto.phoneKey) String? phone,
      @JsonKey(name: UserDto.photoUrlKey) String? photoUrl}) {
    return _UserDto(
      id: id,
      fullname: fullname,
      dateOfBirth: dateOfBirth,
      email: email,
      phone: phone,
      photoUrl: photoUrl,
    );
  }

  UserDto fromJson(Map<String, Object?> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;

  /// Fullname
  @JsonKey(name: UserDto.fullnameKey)
  String get fullname => throw _privateConstructorUsedError;
  @JsonKey(name: UserDto.dateOfBirthKey)
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: UserDto.emailKey)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: UserDto.phoneKey)
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: UserDto.photoUrlKey)
  String? get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: UserDto.fullnameKey) String fullname,
      @JsonKey(name: UserDto.dateOfBirthKey) DateTime? dateOfBirth,
      @JsonKey(name: UserDto.emailKey) String? email,
      @JsonKey(name: UserDto.phoneKey) String? phone,
      @JsonKey(name: UserDto.photoUrlKey) String? photoUrl});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? dateOfBirth = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? photoUrl = freezed,
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
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: UserDto.fullnameKey) String fullname,
      @JsonKey(name: UserDto.dateOfBirthKey) DateTime? dateOfBirth,
      @JsonKey(name: UserDto.emailKey) String? email,
      @JsonKey(name: UserDto.phoneKey) String? phone,
      @JsonKey(name: UserDto.photoUrlKey) String? photoUrl});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? dateOfBirth = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_UserDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto extends _UserDto {
  _$_UserDto(
      {@JsonKey(ignore: true) this.id,
      @JsonKey(name: UserDto.fullnameKey) this.fullname = '',
      @JsonKey(name: UserDto.dateOfBirthKey) this.dateOfBirth,
      @JsonKey(name: UserDto.emailKey) this.email,
      @JsonKey(name: UserDto.phoneKey) this.phone,
      @JsonKey(name: UserDto.photoUrlKey) this.photoUrl})
      : super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override

  /// Fullname
  @JsonKey(name: UserDto.fullnameKey)
  final String fullname;
  @override
  @JsonKey(name: UserDto.dateOfBirthKey)
  final DateTime? dateOfBirth;
  @override
  @JsonKey(name: UserDto.emailKey)
  final String? email;
  @override
  @JsonKey(name: UserDto.phoneKey)
  final String? phone;
  @override
  @JsonKey(name: UserDto.photoUrlKey)
  final String? photoUrl;

  @override
  String toString() {
    return 'UserDto(id: $id, fullname: $fullname, dateOfBirth: $dateOfBirth, email: $email, phone: $phone, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.fullname, fullname) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(fullname),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(photoUrl));

  @JsonKey(ignore: true)
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  factory _UserDto(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: UserDto.fullnameKey) String fullname,
      @JsonKey(name: UserDto.dateOfBirthKey) DateTime? dateOfBirth,
      @JsonKey(name: UserDto.emailKey) String? email,
      @JsonKey(name: UserDto.phoneKey) String? phone,
      @JsonKey(name: UserDto.photoUrlKey) String? photoUrl}) = _$_UserDto;
  _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override

  /// Fullname
  @JsonKey(name: UserDto.fullnameKey)
  String get fullname;
  @override
  @JsonKey(name: UserDto.dateOfBirthKey)
  DateTime? get dateOfBirth;
  @override
  @JsonKey(name: UserDto.emailKey)
  String? get email;
  @override
  @JsonKey(name: UserDto.phoneKey)
  String? get phone;
  @override
  @JsonKey(name: UserDto.photoUrlKey)
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
