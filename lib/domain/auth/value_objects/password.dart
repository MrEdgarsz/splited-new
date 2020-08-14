import 'package:dartz/dartz.dart';
import 'package:splited/domain/core/failures.dart';
import 'package:splited/domain/core/value_object.dart';
import 'package:splited/domain/core/value_validators/password_validator.dart';

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}
