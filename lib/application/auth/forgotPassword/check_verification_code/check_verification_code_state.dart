part of 'check_verification_code_bloc.dart';

@freezed
abstract class CheckVerificationCodeState with _$CheckVerificationCodeState {
  const factory CheckVerificationCodeState({
    @required VerificationCode verificationCode,
    @required bool isSubmitting,
    @required bool showErrors,
    @required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
  }) = _CheckVerificationCodeState;

  factory CheckVerificationCodeState.initial() => CheckVerificationCodeState(
        verificationCode: VerificationCode(List(6)),
        isSubmitting: false,
        showErrors: false,
        failureOrSuccessOption: none(),
      );
}
