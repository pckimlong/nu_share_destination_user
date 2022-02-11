import 'package:nu_share_destination_user/src/domain/_core/value_failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailures valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString('$runtimeType value was: $valueFailure');
  }
}
