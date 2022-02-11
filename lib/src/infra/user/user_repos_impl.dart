import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:nu_share_destination_user/src/domain/user/i_user_repository.dart';
import 'package:nu_share_destination_user/src/domain/user/user_failure.dart';
import 'package:nu_share_destination_user/src/domain/user/user_entity.dart';
import 'package:nu_share_destination_user/src/infra/_core/firebase/firebase_extensions.dart';
import 'user_entity_dto.dart';

class UserReposImpl implements IUserRepository {
  final FirebaseFirestore _firestore;

  UserReposImpl(this._firestore);

  @override
  Future<Either<UserFailure, Unit>> create(UserEntity user) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<UserFailure, Unit>> update(UserEntity user) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<UserFailure, UserEntity>> watchOne(String uid) {
    return _firestore.userColRef.doc(uid).snapshots().map(
      (user) {
        if (!user.exists) {
          return left(const UserFailure.userNotExisted());
        }

        return right(user.data()!.toDomain());
      },
    )..handleError((_) {
        return left(const UserFailure.serverError());
      });
  }
}
