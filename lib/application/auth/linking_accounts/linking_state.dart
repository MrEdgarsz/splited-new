part of 'linking_bloc.dart';

@freezed
abstract class LinkingState with _$LinkingState {
  const factory LinkingState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required Password passwordRepeat,
    @required bool isSubmitting,
    @required bool showErrors,
    @required bool termsAccepted,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _LinkingState;

  factory LinkingState.initial() => LinkingState(
        emailAddress: EmailAddress(""),
        password: Password(""),
        passwordRepeat: Password(""),
        isSubmitting: false,
        showErrors: false,
        termsAccepted: false,
        authFailureOrSuccessOption: none(),
      );
}
