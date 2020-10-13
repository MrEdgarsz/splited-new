import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    @required String filedValue,
  }) = _InvalidEmail<T>;
  const factory ValueFailure.invalidPassword({
    @required String filedValue,
  }) = _InvalidPassowrd<T>;
  const factory ValueFailure.invalidVerificationCode({
    @required List<String> filedValue,
  }) = _InvalidVerificationCode<T>;
}
