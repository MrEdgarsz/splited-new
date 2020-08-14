import 'package:dartz/dartz.dart';
import 'package:splited/domain/core/failures.dart';
import 'package:splited/domain/core/value_object.dart';
import 'package:splited/domain/core/value_validators/password_change_code_validator.dart';

class PasswordChangeCode extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory PasswordChangeCode(int input) {
    assert(input != null);
    return PasswordChangeCode._(validatePasswordChangeCode(input));
  }

  const PasswordChangeCode._(this.value);
}
