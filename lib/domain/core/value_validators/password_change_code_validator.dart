import 'package:dartz/dartz.dart';
import '../failures.dart';

Either<ValueFailure<List<String>>, List<String>> validateVerificationCode(
    List<String> input) {
  print(input.length == 6);
  print(input.every((element) => element != null));
  print(input.every(
    (element) =>
        ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"].contains(element),
  ));
  print(
      "fullResult ${input.length == 6 && input.every((element) => element != null) && input.every(
            (element) => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
                .contains(element),
          )}");
  if (input.length == 6 &&
      input.every((element) => element != null) &&
      input.every(
        (element) => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
            .contains(element),
      )) {
    print("sending code back");
    return right(input);
  } else {
    return left(ValueFailure.invalidVerificationCode(filedValue: input));
  }
}
