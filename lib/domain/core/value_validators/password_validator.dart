import 'package:dartz/dartz.dart';
import '../domain_settings.dart';
import '../failures.dart';

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (RegExp(DomainSettings.passwordRegExp).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.invalidPassword(filedValue: input));
}
