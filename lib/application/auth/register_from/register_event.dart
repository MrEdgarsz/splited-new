part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.registerWithEmailAndPassword() =
      _RegisterWithEmailAndPassword;
  const factory RegisterEvent.emailChanged(
    String email,
  ) = _EmailChanged;
  const factory RegisterEvent.passwordChanged(
    String password,
  ) = _PasswordChanged;
  const factory RegisterEvent.passwordRepeatChanged(
    String passwordRepeat,
  ) = _PasswordRepeatChanged;
  const factory RegisterEvent.termsAcceptanceChanged(
    bool termsAccepted,
  ) = _TermsAcceptanceChanged;
}
