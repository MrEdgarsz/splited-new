import 'package:dartz/dartz.dart';
import '../domain_settings.dart';
import '../failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (RegExp(DomainSettings.emailRegExp).hasMatch(input)) {
    if (!input.contains(" ")) {
      return right(input);
    }
  }
  return left(ValueFailure.invalidEmail(filedValue: input));
}
