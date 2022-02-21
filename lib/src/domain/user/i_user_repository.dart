import 'package:fpdart/fpdart.dart';
import 'user_entity.dart';
import 'user_failure.dart';

abstract class IUserRepository {
  Stream<Either<UserFailure, UserEntity>> watchOne(String uid);
  Future<Either<UserFailure, Unit>> update(UserEntity user);
}
