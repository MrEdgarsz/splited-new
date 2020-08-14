part of 'register_bloc.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required Password passwordRepeat,
    @required bool isSubmitting,
    @required bool showErrors,
    @required bool termsAccepted,
    @required Option<Either<AuthFailure, Unit>> authFaliureOrSuccessOption,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
      emailAddress: EmailAddress(""),
      password: Password(""),
      passwordRepeat: Password(""),
      isSubmitting: false,
      showErrors: false,
      termsAccepted: false,
      authFaliureOrSuccessOption: none());
}
