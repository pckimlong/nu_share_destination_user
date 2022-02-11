import 'package:dartz/dartz.dart';
import 'package:nu_share_destination_user/src/domain/user/i_user_repository.dart';
import 'package:nu_share_destination_user/src/domain/user/user_failure.dart';
import 'package:nu_share_destination_user/src/domain/user/user_entity.dart';

class UserRepository implements IUserRepository {
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
    // TODO: implement watchOne
    throw UnimplementedError();
  }
}
