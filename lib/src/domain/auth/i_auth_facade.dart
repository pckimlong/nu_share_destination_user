import 'package:dartz/dartz.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  /// Watch auth state. return [none()] if unauthenticated
  /// return uid, or token... if authenticated
  Stream<Option<String>> watchAuthStateChanges();

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
