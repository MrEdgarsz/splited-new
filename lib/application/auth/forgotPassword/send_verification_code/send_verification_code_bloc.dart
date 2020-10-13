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

part 'send_verification_code_event.dart';
part 'send_verification_code_state.dart';
part 'send_verification_code_bloc.freezed.dart';

@lazySingleton
class SendVerificationCodeBloc
    extends Bloc<SendVerificationCodeEvent, SendVerificationCodeState> {
  final IAuthFacade _authFacade;
  SendVerificationCodeBloc(this._authFacade)
      : super(SendVerificationCodeState.initial());

  @override
  Stream<SendVerificationCodeState> mapEventToState(
    SendVerificationCodeEvent event,
  ) async* {
    yield* event.map(
      emailAddressChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailAddress),
          failureOrSuccessOption: none(),
        );
      },
      sendVerificationCode: (e) async* {
        Either<AuthFailure, Unit> failureOrSuccessOption;
        if (state.emailAddress.isValid) {
          yield state.copyWith(
            isSubmitting: true,
            failureOrSuccessOption: none(),
          );
          await Future.delayed(const Duration(milliseconds: 1000), () {
            failureOrSuccessOption = right(unit);
          });
          // failureOrSuccessOption =
          // await _authFacade.remindPassword(email: state.emailAddress);
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
