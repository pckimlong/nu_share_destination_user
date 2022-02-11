import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nu_share_destination_user/src/domain/auth/auth_failure.dart';
import 'package:nu_share_destination_user/src/domain/auth/auth_user_entity.dart';
import 'package:nu_share_destination_user/src/domain/auth/i_auth_facade.dart';
import 'firebase_user_mapper.dart';

class AuthFacadeImpl implements IAuthFacade {
  AuthFacadeImpl(this._auth);

  final FirebaseAuth _auth;

  @override
  Future<Option<AuthUserEntity>> getSignedInUser() async {
    final firebaseUser = _auth.currentUser;
    if (firebaseUser == null) return none();
    return some(firebaseUser.toDomain());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Stream<Either<AuthFailure, String>> signInWithPhone({
    required String phoneNumber,
    required Duration timeout,
  }) async* {
    final streamController = StreamController<Either<AuthFailure, String>>();

    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (_) {},
      verificationFailed: (FirebaseAuthException err) {
        late final Either<AuthFailure, String> result;
        switch (err.code) {
          case 'invalid-phone-number':
            result = left(const AuthFailure.invalidPhoneNumber());
            break;
          case 'too-many-requests':
            result = left(const AuthFailure.toManyRequest());
            break;
          default:
            result = left(const AuthFailure.serverError());
            break;
        }
        streamController.add(result);
      },
      codeSent: (vertificationId, _) {
        streamController.add(right(vertificationId));
      },
      codeAutoRetrievalTimeout: (_) {
        streamController.add(left(const AuthFailure.smsTimeout()));
      },
    );
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }

  @override
  Future<Either<AuthFailure, Unit>> updateUserInfo(AuthUserEntity user) async {
    try {
      final currentFirebaseUser = _auth.currentUser;
      if (currentFirebaseUser == null) {
        return left(const AuthFailure.unauthorized());
      }
      await Future.wait([
        currentFirebaseUser.updateDisplayName(user.fullname),
        currentFirebaseUser.updateEmail(user.email ?? ''),
        currentFirebaseUser.updatePhotoURL(user.photoURL),
      ]);
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      //todo - return correct failure
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> vertifySmcCode({
    required String smsCode,
    required String verificationId,
  }) async {
    try {
      final phoneCredential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );

      await _auth.signInWithCredential(phoneCredential);
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "session-expired") {
        return left(const AuthFailure.sessionExpired());
      } else if (e.code == 'invalid-verification-code') {
        return left(const AuthFailure.invalidVerificationCode());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Stream<Option<AuthUserEntity>> watchAuthStateChanges() {
    return _auth.authStateChanges().map((user) {
      if (user == null) return none();
      return some(user.toDomain());
    });
  }
}
