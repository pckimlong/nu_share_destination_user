import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../domain/user/i_user_repository.dart';
import '../../domain/user/user_failure.dart';
import '../../domain/user/user_entity.dart';
import '../core/firebase/firebase_extensions.dart';
import 'user_entity_dto.dart';
import 'firebase_user_mapper.dart';

class UserReposImpl implements IUserRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  UserReposImpl(this._firestore, this._auth);

  @override
  Future<Either<UserFailure, Unit>> update(UserEntity user) async {
    try {
      //todo This should be validated inside value object. Follow DDD :D
      // if (user.fullname.isEmpty) {
      //   return left(UserFailure.missedRequiredInfoField());
      // }

      final userDto = UserEntityDto.fromDomain(user);
      final docRef = _firestore.userColRef.doc(userDto.id);
      await docRef.update(userDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      return left(const UserFailure.errorUpdatingUser());
    }
  }

  @override
  Stream<Either<UserFailure, UserEntity>> watchOne(String uid) {
    return _firestore.userColRef.doc(uid).snapshots().map(
      (user) {
        if (!user.exists) {
          _createUserFromFirebaseUser();
          return left(const UserFailure.userNotExisted());
        }
        final validUser = user.data()!;
        // check if user data existed
        if (validUser.isUnregistered) {
          return left(
            UserFailure.missedRequiredInfoField(validUser.toDomain()),
          );
        }

        return right(validUser.toDomain());
      },
    )..handleError((_) {
        return left(const UserFailure.serverError());
      });
  }

  /// Copy data from firebase user like name...
  /// If firebase user use provider like facebook, google.
  /// It will contain data
  void _createUserFromFirebaseUser() async {
    // it won't be null, coz called from authenticated user
    final user = _auth.currentUser!;
    await _firestore.userColRef.doc(user.uid).set(user.toEntity());
  }
}
