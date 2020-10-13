import 'package:dartz/dartz.dart';
import 'package:splited/domain/core/errors.dart';
import 'package:splited/domain/core/failures.dart';
import 'package:splited/domain/core/value_object.dart';
import 'package:splited/domain/core/value_validators/password_change_code_validator.dart';

class VerificationCode extends ValueObject<List<String>> {
  @override
  final Either<ValueFailure<List<String>>, List<String>> value;

  factory VerificationCode(List<String> input) {
    assert(input != null);
    return VerificationCode._(validateVerificationCode(input));
  }

  const VerificationCode._(this.value);

  String getJoinedOrCrash() {
    return value.fold(
      (f) => throw UnexpectedValueFailureError,
      (r) => r.join(),
    );
  }
}
