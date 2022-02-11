import 'package:dartz/dartz.dart';
import 'package:nu_share_destination_user/src/domain/auth/auth_user_entity.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  /// Notified when the authentication status change
  Stream<Option<AuthUserEntity>> watchAuthStateChanges();

  Future<Option<AuthUserEntity>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> updateUserInfo(AuthUserEntity user);

  Future<void> signOut();

  Stream<Either<AuthFailure, String>> signInWithPhone({
    required String phoneNumber,
    required Duration timeout,
  });
  Future<Either<AuthFailure, Unit>> vertifySmcCode({
    required String smsCode,
    required String verificationId,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Either<AuthFailure, Unit>> signInWithFacebook();
}
