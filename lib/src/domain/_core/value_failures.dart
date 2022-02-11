import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailures<T> with _$ValueFailures {
  const factory ValueFailures.emptyString() = EmptyString<T>;
  const factory ValueFailures.timeIsInFuture(DateTime now, T future) =
      TimeIsInFuture<T>;
}
