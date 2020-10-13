part of 'change_password_bloc.dart';

@freezed
abstract class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    @required Password password,
    @required Password passwordRepeat,
    @required bool isSubmitting,
    @required bool showErrors,
    @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
  }) = _ChangePasswordState;

  factory ChangePasswordState.initial() => ChangePasswordState(
        password: Password(""),
        passwordRepeat: Password(""),
        isSubmitting: false,
        showErrors: false,
        failureOrSuccessOption: none(),
      );
}
