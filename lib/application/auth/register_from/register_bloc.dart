import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:splited/domain/auth/auth_failure.dart';
import 'package:splited/domain/auth/i_auth_facade.dart';
import 'package:splited/domain/auth/value_objects/email_address.dart';
import 'package:splited/domain/auth/value_objects/password.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@lazySingleton
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IAuthFacade _authFacade;

  RegisterBloc(this._authFacade) : super(RegisterState.initial());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    yield* event.map(
      passwordChanged: (e) async* {
        final result = state.copyWith(
          password: Password(e.password),
          authFaliureOrSuccessOption: none(),
        );
        yield result;
      },
      emailChanged: (e) async* {
        final result = state.copyWith(
          emailAddress: EmailAddress(e.email),
          authFaliureOrSuccessOption: none(),
        );
        yield result;
      },
      registerWithEmailAndPassword: (e) async* {
        Either<AuthFailure, Unit> failureOrSuccess;
        final bool emailValid = state.emailAddress.isValid;
        final bool passwordValid = state.password.isValid;
        final bool passwordRepeatValid = state.passwordRepeat.isValid;
        if (emailValid &&
            passwordValid &&
            passwordRepeatValid &&
            state.termsAccepted == true &&
            state.password == state.passwordRepeat) {
          final result = state.copyWith(
            isSubmitting: true,
            authFaliureOrSuccessOption: none(),
          );
          yield result;
          failureOrSuccess = await _authFacade.registerWithLoginAndPassword(
              email: state.emailAddress, password: state.password);
        }
        yield state.copyWith(
          isSubmitting: false,
          showErrors: true,
          authFaliureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      passwordRepeatChanged: (PasswordRepeatChanged e) async* {
        final result = state.copyWith(
          passwordRepeat: Password(e.passwordRepeat),
          authFaliureOrSuccessOption: none(),
        );
        yield result;
      },
      termsAcceptanceChanged: (TermsAcceptanceChanged e) async* {
        final result = state.copyWith(
          termsAccepted: e.termsAccepted,
          authFaliureOrSuccessOption: none(),
        );
        yield result;
      },
    );
  }
}
