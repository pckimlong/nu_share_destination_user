import 'package:nu_share_destination_user/src/domain/_core/value_object.dart';
import 'package:dartz/dartz.dart';

import '../_core/value_failures.dart';
import '../_core/value_validators.dart';

class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailures<String>, String> value;

  const FullName._(this.value);

  factory FullName(String fullname) => FullName._(validateFullName(fullname));
}

class DateOfBirth extends ValueObject<DateTime> {
  @override
  final Either<ValueFailures<DateTime>, DateTime> value;

  const DateOfBirth._(this.value);

  factory DateOfBirth(DateTime value) {
    return DateOfBirth._(validateDateOfBirth(value));
  }
}
