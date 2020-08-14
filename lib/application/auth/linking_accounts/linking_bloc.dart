import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:splited/domain/auth/accountTypes.dart';
import 'package:splited/domain/auth/auth_failure.dart';
import 'package:splited/domain/auth/i_auth_facade.dart';
import 'package:splited/domain/auth/value_objects/email_address.dart';
import 'package:splited/domain/auth/value_objects/password.dart';

part 'linking_bloc.freezed.dart';
part 'linking_event.dart';
part 'linking_state.dart';

@lazySingleton
class LinkingBloc extends Bloc<LinkingEvent, LinkingState> {
  LinkingBloc(this._authFacade) : super(LinkingState.initial());
  final IAuthFacade _authFacade;

  @override
  Stream<LinkingState> mapEventToState(
    LinkingEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.email),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordRepeatChanged: (e) async* {
        yield state.copyWith(
          passwordRepeat: Password(e.passwordRepeat),
          authFailureOrSuccessOption: none(),
        );
      },
      termsAcceptanceChanged: (e) async* {
        yield state.copyWith(
          termsAccepted: e.termsAccepted,
          authFailureOrSuccessOption: none(),
        );
      },
      linkAccounts: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        yield* e.type.maybeMap(
          standard: (_) async* {
            Either<AuthFailure, Unit> failureOrSuccess;
            final bool emailValid = state.emailAddress.isValid;
            final bool passwordValid = state.password.isValid;
            final bool passwordRepeatValid = state.passwordRepeat.isValid;
            if (emailValid &&
                passwordValid &&
                passwordRepeatValid &&
                state.termsAccepted == true &&
                state.password == state.passwordRepeat) {
              failureOrSuccess = await _authFacade.linkAccountWith(
                type: const Standard(),
                email: state.emailAddress,
                password: state.password,
              );
            }
            yield state.copyWith(
              isSubmitting: false,
              showErrors: true,
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
            );
          },
          orElse: () async* {
            final faliureOrSuccess =
                await _authFacade.linkAccountWith(type: e.type);
            yield state.copyWith(
                isSubmitting: false,
                authFailureOrSuccessOption: some(faliureOrSuccess));
          },
        );
      },
    );
  }
}
