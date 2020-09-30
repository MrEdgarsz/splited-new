import 'package:dartz/dartz.dart';
import 'package:splited/domain/core/failures.dart';
import 'package:splited/domain/core/value_object.dart';
import 'package:uuid/uuid.dart';

class UniqueID extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueID() {
    return UniqueID._(right(Uuid().v1()));
  }

  factory UniqueID.fromUniqueString(String input) {
    assert(input != null);
    return UniqueID._(right(input));
  }

  const UniqueID._(this.value);
}
