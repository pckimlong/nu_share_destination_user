import 'package:fpdart/fpdart.dart';
import '../entities/entities.dart';
import '../failures/user_failure.dart';

abstract class IUserRepository {
  Stream<Either<UserFailure, User>> watchOne(String uid);
  Future<Either<UserFailure, Unit>> update(User user);
}
