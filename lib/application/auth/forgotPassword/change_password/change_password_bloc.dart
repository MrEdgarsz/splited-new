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

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';

@lazySingleton
class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final IAuthFacade _authFacade;

  ChangePasswordBloc(this._authFacade) : super(ChangePasswordState.initial());

  @override
  Stream<ChangePasswordState> mapEventToState(
    ChangePasswordEvent event,
  ) async* {
    yield* event.map(
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          failureOrSuccessOption: none(),
        );
      },
      passwordRepeatChanged: (e) async* {
        yield state.copyWith(
          passwordRepeat: Password(e.passwordRepeat),
          failureOrSuccessOption: none(),
        );
      },
      changePassword: (e) async* {
        Either<AuthFailure, Unit> failureOrSuccessOption;
        if (state.password.isValid &&
            state.password.value == state.passwordRepeat.value) {
          yield state.copyWith(
            isSubmitting: true,
            failureOrSuccessOption: none(),
          );
          failureOrSuccessOption = await _authFacade.changePassword(
              email: e.emailAddress,
              password: state.password,
              code: e.verificationCode);
        } else {
          yield state.copyWith(
            isSubmitting: false,
            showErrors: true,
            failureOrSuccessOption: optionOf(failureOrSuccessOption),
          );
        }
      },
    );
  }
}
