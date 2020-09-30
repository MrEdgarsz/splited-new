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

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@lazySingleton
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    print("Przyszło");
    yield* event.map(
      passwordChanged: (e) async* {
        final result = state.copyWith(
          password: Password(e.password),
          authFailureOrSuccessOption: none(),
        );
        yield result;
      },
      emailChanged: (e) async* {
        final result = state.copyWith(
          emailAddress: EmailAddress(e.email),
          authFailureOrSuccessOption: none(),
        );
        yield result;
      },
      signInWithEmailAndPassword: (e) async* {
        Either<AuthFailure, Unit> failureOrSuccess;
        final bool emailValid = state.emailAddress.isValid;
        final bool passwordValid = state.password.isValid;
        if (emailValid && passwordValid) {
          final result = state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );
          yield result;
          failureOrSuccess = await _authFacade.signInWithLoginAndPassword(
              email: state.emailAddress, password: state.password);
        } else {
          failureOrSuccess = left(const AuthFailure.invalidCredentials());
        }
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      signInWithGoogle: (e) async* {
        yield* _signInWithThirdPartyService(_authFacade.signInWithGoogle);
      },
      signInWithFacebook: (e) async* {
        yield* _signInWithThirdPartyService(_authFacade.signInWithFacebook);
      },
    );
  }

  Stream<SignInFormState> _signInWithThirdPartyService(
    Future<Either<AuthFailure, Unit>> Function() forwardedCall,
  ) async* {
    yield state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );
    final FailureOrSuccess = await forwardedCall();
    yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(FailureOrSuccess));
  }
}
