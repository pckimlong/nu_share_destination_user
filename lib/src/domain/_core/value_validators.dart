import 'package:dartz/dartz.dart';
import 'package:nu_share_destination_user/src/domain/_core/value_failures.dart';

Either<ValueFailures<String>, String> validateFullName(String input) {
  if (input.trim().isEmpty) {
    return const Left(ValueFailures.emptyString());
  }
  return Right(input);
}

Either<ValueFailures<DateTime>, DateTime> validateDateOfBirth(
    DateTime dateTime) {
  final now = DateTime.now();
  if (dateTime.compareTo(now).isNegative) {
    return left(ValueFailures.timeIsInFuture(now, dateTime));
  }
  return Right(dateTime);
}
