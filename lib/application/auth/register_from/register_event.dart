part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.registerWithEmailAndPassword() =
      RegisterWithEmailAndPassword;
  const factory RegisterEvent.emailChanged(
    String email,
  ) = EmailChanged;
  const factory RegisterEvent.passwordChanged(
    String password,
  ) = PasswordChanged;
  const factory RegisterEvent.passwordRepeatChanged(
    String passwordRepeat,
  ) = PasswordRepeatChanged;
  const factory RegisterEvent.termsAcceptanceChanged(
    bool termsAccepted,
  ) = TermsAcceptanceChanged;
}
