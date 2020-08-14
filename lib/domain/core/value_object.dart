import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:splited/domain/core/errors.dart';
import 'package:splited/domain/core/failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool get isValid => this.value.isRight();

  ///Throws [UnexptectedValueError] containing the [ValueFaliure] or returns value.
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError, id);
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ValueObject(value: $value)';
}
