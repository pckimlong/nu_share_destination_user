import 'package:dartz/dartz.dart';
import 'package:nu_share_destination_user/src/domain/user/user_entity.dart';
import 'package:nu_share_destination_user/src/domain/user/user_failure.dart';

abstract class IUserRepository {
  Stream<Either<UserFailure, UserEntity>> watchOne(String uid);
  Future<Either<UserFailure, Unit>> update(UserEntity user);
}
