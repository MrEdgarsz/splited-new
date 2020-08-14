import 'package:dartz/dartz.dart';
import '../failures.dart';

Either<ValueFailure<int>, int> validatePasswordChangeCode(int input) {
  if (input > 99999) {
    return right(input);
  }
  return left(ValueFailure.invalidPasswordChangeCode(filedValue: input));
}
