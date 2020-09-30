import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:splited/application/auth/register_from/register_bloc.dart';
import 'package:splited/domain/auth/value_objects/email_address.dart';
import 'package:splited/domain/auth/value_objects/password.dart';
import 'package:splited/infrastructure/auth/mock_auth_facade.dart';

main() {
  final MockAuthFacade _mockAuthFacade = MockAuthFacade();
  blocTest(
    "Testing register bloc for having a hard time with showErrors",
    build: () => RegisterBloc(_mockAuthFacade),
    act: (bloc) => bloc.add(const RegisterEvent.registerWithEmailAndPassword()),
    expect: [
      RegisterState(
        emailAddress: EmailAddress(""),
        password: Password(""),
        passwordRepeat: Password(""),
        isSubmitting: false,
        showErrors: true,
        termsAccepted: false,
        authFailureOrSuccessOption: none(),
      ),
    ],
  );
}
