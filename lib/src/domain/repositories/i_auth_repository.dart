import 'package:fpdart/fpdart.dart';

import '../failures/failures.dart';

abstract class IAuthRepository {
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

  /// This only use with driver
  Future<Either<AuthFailure, Unit>> signInWithEmailPassword({
    required String email,
    required String password,
  });
}
