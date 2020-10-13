part of 'send_verification_code_bloc.dart';

@freezed
abstract class SendVerificationCodeEvent with _$SendVerificationCodeEvent {
  const factory SendVerificationCodeEvent.emailAddressChanged(
      String emailAddress) = _EmailAddressChanged;

  const factory SendVerificationCodeEvent.sendVerificationCode() =
      _SendVerificationCode;
}
