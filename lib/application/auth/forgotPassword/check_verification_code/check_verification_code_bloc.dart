import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:splited/domain/auth/auth_failure.dart';
import 'package:splited/domain/auth/i_auth_facade.dart';
import 'package:splited/domain/auth/value_objects/email_address.dart';
import 'package:splited/domain/auth/value_objects/password.dart';
import 'package:splited/domain/auth/value_objects/verification_code.dart';
import 'package:splited/domain/core/errors.dart';

part 'check_verification_code_event.dart';
part 'check_verification_code_state.dart';
part 'check_verification_code_bloc.freezed.dart';

@lazySingleton
class CheckVerificationCodeBloc
    extends Bloc<CheckVerificationCodeEvent, CheckVerificationCodeState> {
  final IAuthFacade _authFacade;

  CheckVerificationCodeBloc(this._authFacade)
      : super(CheckVerificationCodeState.initial());

  @override
  Stream<CheckVerificationCodeState> mapEventToState(
    CheckVerificationCodeEvent event,
  ) async* {
    yield* event.map(
      verificationCodeChanged: (e) async* {
        final List<String> tempList = state.verificationCode.value.fold(
          (l) => l.maybeMap(
            invalidVerificationCode: (f) => f.filedValue,
            orElse: () => throw UnexpectedValueFailureError(
                "Encoutered Failure in VerificationCode value object diffrent than InvalidVerificationCode"),
          ),
          (r) => r,
        );

        tempList[e.index] = e.digit;
        print(tempList);
        yield state.copyWith(
          verificationCode: VerificationCode(tempList),
          failureOrSuccessOption: none(),
        );
        print(VerificationCode(tempList));
      },
      verifyCode: (e) async* {
        print("dotarło zapytanie");
        Either<AuthFailure, Unit> failureOrSuccessOption;
        if (state.verificationCode.isValid) {
          yield state.copyWith(
            isSubmitting: true,
            failureOrSuccessOption: none(),
          );
          failureOrSuccessOption = await _authFacade.checkPasswordCode(
              code: state.verificationCode, email: e.emailAddress);
        }
        yield state.copyWith(
          isSubmitting: false,
          showErrors: true,
          failureOrSuccessOption: optionOf(failureOrSuccessOption),
        );
      },
    );
  }
}
