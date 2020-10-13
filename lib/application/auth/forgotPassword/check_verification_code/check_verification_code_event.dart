part of 'check_verification_code_bloc.dart';

@freezed
abstract class CheckVerificationCodeEvent with _$CheckVerificationCodeEvent {
  const factory CheckVerificationCodeEvent.verificationCodeChanged(
      String digit, int index) = _VerificationCodeChanged;
  const factory CheckVerificationCodeEvent.verifyCode(
      EmailAddress emailAddress) = _VerifyCode;
}
