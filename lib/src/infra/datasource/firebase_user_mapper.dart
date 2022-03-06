import 'package:firebase_auth/firebase_auth.dart';
import '../dtos/user_entity_dto.dart';

extension UserX on User {
  /// Copy data from firebase user to user enetity
  /// This should be use when logged in with other provider like google, facebook
  /// If current user doesn't contain infomation like name... copy this information
  /// from those provider and save
  UserEntityDto toEntity() {
    return UserEntityDto(
      fullname: displayName ?? '',
      id: uid,
      email: email,
      phone: phoneNumber,
      photoUrl: photoURL,
    );
  }
}
