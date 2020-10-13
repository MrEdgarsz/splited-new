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

class UnexpectedValueFailureError extends Error {
  final String message;

  UnexpectedValueFailureError(this.message);

  @override
  String toString() {
    return Error.safeToString(
        "Encoutered UnexpectedValueFailure at unrecoverable state. Terminating. Debug message was: $message");
  }
}
