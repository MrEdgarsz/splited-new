import 'package:splited/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString(
        "Encoutered ValueFailure at unrecoverable state. Terminating. Failure was: $valueFailure");
  }
}
