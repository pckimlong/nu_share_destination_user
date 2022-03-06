import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User({
    required String? id,
    required String fullname,
    required String? email,
    required String? phone,
    required String? photoUrl,
  }) = _User;
}
