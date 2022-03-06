import 'package:firebase_auth/firebase_auth.dart';
import 'user_dto.dart';

extension UserX on User {
  /// Copy data from firebase user to user enetity
  /// This should be use when logged in with other provider like google, facebook
  /// If current user doesn't contain infomation like name... copy this information
  /// from those provider and save
  UserDto toEntity() {
    return UserDto(
      fullname: displayName ?? '',
      id: uid,
      email: email,
      phone: phoneNumber,
      photoUrl: photoURL,
    );
  }
}
