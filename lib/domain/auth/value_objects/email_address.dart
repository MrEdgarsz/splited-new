import 'package:dartz/dartz.dart';
import 'package:splited/domain/core/failures.dart';
import 'package:splited/domain/core/value_object.dart';
import 'package:splited/domain/core/value_validators/email_addres_validator.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}
