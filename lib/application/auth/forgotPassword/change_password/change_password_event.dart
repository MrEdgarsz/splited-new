part of 'change_password_bloc.dart';

@freezed
abstract class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory ChangePasswordEvent.passwordRepeatChanged(
      String passwordRepeat) = _PasswordRepeatChanged;
  const factory ChangePasswordEvent.changePassword(
          EmailAddress emailAddress, VerificationCode verificationCode) =
      _ChangePassword;
}
