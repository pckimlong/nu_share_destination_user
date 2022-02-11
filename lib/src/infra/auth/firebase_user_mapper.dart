import 'package:firebase_auth/firebase_auth.dart';
import 'package:nu_share_destination_user/src/domain/auth/auth_user_entity.dart';

extension FirebaseUserDomainX on User {
  AuthUserEntity toDomain() {
    return AuthUserEntity(
      uid: uid,
      fullname: displayName,
      email: email,
      emailVerified: emailVerified,
      phoneNumber: phoneNumber,
      photoURL: photoURL,
    );
  }
}
