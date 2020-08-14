import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:splited/domain/auth/value_objects/password.dart';
import 'package:splited/domain/core/failures.dart';

void main() {
  test(
      'Password should return invalidPassword failure when value do not match RegExp',
      () {
    final Password password = Password("dwa");
    expect(
        password.value,
        Left<ValueFailure<String>, String>(
            const ValueFailure.invalidPassword(filedValue: "dwa")));
  });
  test(
      'Password should return shortPassword failure when value do not match RegExp',
      () {
    final Password password = Password("dW1");
    expect(
        password.value,
        Left<ValueFailure<String>, String>(
            const ValueFailure.invalidPassword(filedValue: "dW1")));
  });
  test(
      'Password should return value when value matches RegExp and is atleast 6 characters long',
      () {
    final Password password = Password("dW1daw");
    expect(password.value, Right<ValueFailure<String>, String>("dW1daw"));
  });
  test(
      'Password should return value when value matches RegExp and is atleast 6 characters long test2',
      () {
    final Password password = Password("Test12");
    expect(password.value, Right<ValueFailure<String>, String>("Test12"));
  });
}
