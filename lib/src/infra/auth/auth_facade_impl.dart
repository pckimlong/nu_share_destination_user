import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nu_share_destination_user/src/domain/auth/auth_failure.dart';
import 'package:nu_share_destination_user/src/domain/auth/i_auth_facade.dart';

class AuthFacadeImpl implements IAuthFacade {
  AuthFacadeImpl(
    this._auth,
    this._googleSignIn,
    this._facebookAuth,
  );

  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() async {
    try {
      final result = await _facebookAuth.login();

      if (result.accessToken == null) {
        debugPrint(result.message);
        return const Left(AuthFailure.cancelledByUser());
      }

      final fbAuthCredential = FacebookAuthProvider.credential(
        result.accessToken!.token,
      );

      await _auth.signInWithCredential(fbAuthCredential);
      return right(unit);
    } on Exception catch (_) {
      debugPrint(_.toString());
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return const Left(AuthFailure.cancelledByUser());
      }

      final googleAuth = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _auth.signInWithCredential(authCredential);
      return right(unit);
    } on Exception catch (_) {
      return left(const AuthFailure.serverError());
    }
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
        debugPrint('Firebase auth exception code: ${err.code}');
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

    yield* streamController.stream;
  }

  @override
  Future<void> signOut() async {
    await Future.wait([
      _auth.signOut(),
      _googleSignIn.signOut(),
      _facebookAuth.logOut(),
    ]);
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
  Stream<Option<String>> watchAuthStateChanges() {
    return _auth.authStateChanges().map((user) {
      if (user == null) return none();
      return some(user.uid);
    });
  }
}
