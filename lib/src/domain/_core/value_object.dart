import 'package:dartz/dartz.dart';
import 'package:nu_share_destination_user/src/domain/_core/value_failures.dart';

import 'package:uuid/uuid.dart';

import 'errors.dart';

abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailures<T>, T> get value;

  @override
  String toString() => 'ValueObject($T)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  T getOrCrash() => value.fold((l) => throw UnexpectedValueError(l), (r) => r);

  @override
  int get hashCode => value.hashCode;
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailures<String>, String> value;

  factory UniqueId() => UniqueId._(right(const Uuid().v1()));

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(right(uniqueId));
  }

  const UniqueId._(this.value);
}
