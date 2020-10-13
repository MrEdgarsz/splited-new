part of 'send_verification_code_bloc.dart';

@freezed
@freezed
abstract class SendVerificationCodeState with _$SendVerificationCodeState {
  const factory SendVerificationCodeState({
    @required EmailAddress emailAddress,
    @required bool isSubmitting,
    @required bool showErrors,
    @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
  }) = _SendVerificationCodeState;

  factory SendVerificationCodeState.initial() => SendVerificationCodeState(
        emailAddress: EmailAddress(""),
        isSubmitting: false,
        showErrors: false,
        failureOrSuccessOption: none(),
      );
}
