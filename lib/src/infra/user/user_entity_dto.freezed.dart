// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_entity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEntityDto _$UserEntityDtoFromJson(Map<String, dynamic> json) {
  return _UserEntityDto.fromJson(json);
}

/// @nodoc
class _$UserEntityDtoTearOff {
  const _$UserEntityDtoTearOff();

  _UserEntityDto call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: UserEntityDto.fullnameKey) required String fullname,
      @JsonKey(name: UserEntityDto.dateOfBirthKey) DateTime? dateOfBirth}) {
    return _UserEntityDto(
      id: id,
      fullname: fullname,
      dateOfBirth: dateOfBirth,
    );
  }

  UserEntityDto fromJson(Map<String, Object?> json) {
    return UserEntityDto.fromJson(json);
  }
}

/// @nodoc
const $UserEntityDto = _$UserEntityDtoTearOff();

/// @nodoc
mixin _$UserEntityDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: UserEntityDto.fullnameKey)
  String get fullname => throw _privateConstructorUsedError;
  @JsonKey(name: UserEntityDto.dateOfBirthKey)
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntityDtoCopyWith<UserEntityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityDtoCopyWith<$Res> {
  factory $UserEntityDtoCopyWith(
          UserEntityDto value, $Res Function(UserEntityDto) then) =
      _$UserEntityDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: UserEntityDto.fullnameKey) String fullname,
      @JsonKey(name: UserEntityDto.dateOfBirthKey) DateTime? dateOfBirth});
}

/// @nodoc
class _$UserEntityDtoCopyWithImpl<$Res>
    implements $UserEntityDtoCopyWith<$Res> {
  _$UserEntityDtoCopyWithImpl(this._value, this._then);

  final UserEntityDto _value;
  // ignore: unused_field
  final $Res Function(UserEntityDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? dateOfBirth = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$UserEntityDtoCopyWith<$Res>
    implements $UserEntityDtoCopyWith<$Res> {
  factory _$UserEntityDtoCopyWith(
          _UserEntityDto value, $Res Function(_UserEntityDto) then) =
      __$UserEntityDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: UserEntityDto.fullnameKey) String fullname,
      @JsonKey(name: UserEntityDto.dateOfBirthKey) DateTime? dateOfBirth});
}

/// @nodoc
class __$UserEntityDtoCopyWithImpl<$Res>
    extends _$UserEntityDtoCopyWithImpl<$Res>
    implements _$UserEntityDtoCopyWith<$Res> {
  __$UserEntityDtoCopyWithImpl(
      _UserEntityDto _value, $Res Function(_UserEntityDto) _then)
      : super(_value, (v) => _then(v as _UserEntityDto));

  @override
  _UserEntityDto get _value => super._value as _UserEntityDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? dateOfBirth = freezed,
  }) {
    return _then(_UserEntityDto(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEntityDto implements _UserEntityDto {
  _$_UserEntityDto(
      {@JsonKey(ignore: true) this.id,
      @JsonKey(name: UserEntityDto.fullnameKey) required this.fullname,
      @JsonKey(name: UserEntityDto.dateOfBirthKey) this.dateOfBirth});

  factory _$_UserEntityDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserEntityDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  @JsonKey(name: UserEntityDto.fullnameKey)
  final String fullname;
  @override
  @JsonKey(name: UserEntityDto.dateOfBirthKey)
  final DateTime? dateOfBirth;

  @override
  String toString() {
    return 'UserEntityDto(id: $id, fullname: $fullname, dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserEntityDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.fullname, fullname) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(fullname),
      const DeepCollectionEquality().hash(dateOfBirth));

  @JsonKey(ignore: true)
  @override
  _$UserEntityDtoCopyWith<_UserEntityDto> get copyWith =>
      __$UserEntityDtoCopyWithImpl<_UserEntityDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEntityDtoToJson(this);
  }
}

abstract class _UserEntityDto implements UserEntityDto {
  factory _UserEntityDto(
          {@JsonKey(ignore: true) String? id,
          @JsonKey(name: UserEntityDto.fullnameKey) required String fullname,
          @JsonKey(name: UserEntityDto.dateOfBirthKey) DateTime? dateOfBirth}) =
      _$_UserEntityDto;

  factory _UserEntityDto.fromJson(Map<String, dynamic> json) =
      _$_UserEntityDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  @JsonKey(name: UserEntityDto.fullnameKey)
  String get fullname;
  @override
  @JsonKey(name: UserEntityDto.dateOfBirthKey)
  DateTime? get dateOfBirth;
  @override
  @JsonKey(ignore: true)
  _$UserEntityDtoCopyWith<_UserEntityDto> get copyWith =>
      throw _privateConstructorUsedError;
}
