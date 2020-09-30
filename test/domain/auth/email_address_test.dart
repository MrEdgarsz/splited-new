import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:splited/domain/auth/value_objects/email_address.dart';
import 'package:splited/domain/core/failures.dart';

void main() {
  test('EmailAddres should return error when value do not match RegExp', () {
    final EmailAddress email = EmailAddress("dwa");
    expect(
        email.value,
        const Left<ValueFailure<String>, String>(
            const ValueFailure.invalidEmail(filedValue: "dwa")));
  });
  test('EmailAddres should return value when value matches RegExp', () {
    const String emailMock = "dwa@wp.pl";
    final EmailAddress email = EmailAddress(emailMock);
    expect(email.value, const Right<ValueFailure<String>, String>(emailMock));
  });
}
