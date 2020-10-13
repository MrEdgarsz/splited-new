part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory SignInFormEvent.emailChanged(String email) = _EmailChanged;
  const factory SignInFormEvent.signInWithEmailAndPassword() =
      _SignInWithEmailAndPassword;
  const factory SignInFormEvent.signInWithGoogle() = _SignInWithGoogle;
  const factory SignInFormEvent.signInWithFacebook() = _SignInWithFacebook;
}
