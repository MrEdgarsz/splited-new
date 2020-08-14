import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    @required String filedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.invalidPassword({
    @required String filedValue,
  }) = InvalidPassowrd<T>;
  const factory ValueFailure.invalidPasswordChangeCode({
    @required int filedValue,
  }) = InvalidVerificationCode<T>;
}
