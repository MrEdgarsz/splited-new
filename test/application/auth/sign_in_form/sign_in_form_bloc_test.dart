import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:splited/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:splited/domain/auth/value_objects/email_address.dart';
import 'package:splited/domain/auth/value_objects/password.dart';
import 'package:splited/infrastructure/auth/mock_auth_facade.dart';

void main() {
  final MockAuthFacade _mockAuthFacade = MockAuthFacade();
  blocTest(
    "Should return proper SignInFormState when PasswordChanged Event is sent",
    build: () => SignInFormBloc(_mockAuthFacade),
    act: (SignInFormBloc bloc) =>
        bloc.add(const PasswordChanged("Dwadawdawdaw")),
    expect: [
      SignInFormState(
        password: Password("Dwadawdawdaw"),
        authFailureOrSuccessOption: none(),
        isSubmitting: false,
        emailAddress: EmailAddress(""),
      ),
    ],
  );
  blocTest(
    "Should return proper SignInFormState when EmailChanged Event is sent",
    build: () => SignInFormBloc(_mockAuthFacade),
    act: (SignInFormBloc bloc) => bloc.add(const EmailChanged("Dwadawdawdaw")),
    expect: [
      SignInFormState(
        password: Password(""),
        authFailureOrSuccessOption: none(),
        isSubmitting: false,
        emailAddress: EmailAddress("Dwadawdawdaw"),
      ),
    ],
  );
  blocTest(
    "Should return proper SignInFormState when LogInWithEmailAndPassword Event is sent with wrong credentials",
    build: () => SignInFormBloc(_mockAuthFacade),
    act: (SignInFormBloc bloc) {
      bloc.add(const EmailChanged("Dwadawdawdaw"));
      bloc.add(const PasswordChanged("Dwadawdawdaw"));
      bloc.add(const SignInWithEmailAndPassword());
    },
    expect: [
      SignInFormState(
        password: Password(""),
        authFailureOrSuccessOption: none(),
        isSubmitting: false,
        emailAddress: EmailAddress("Dwadawdawdaw"),
      ),
      SignInFormState(
        password: Password("Dwadawdawdaw"),
        authFailureOrSuccessOption: none(),
        isSubmitting: false,
        emailAddress: EmailAddress("Dwadawdawdaw"),
      ),
      SignInFormState(
        password: Password("Dwadawdawdaw"),
        authFailureOrSuccessOption: none(),
        isSubmitting: false,
        emailAddress: EmailAddress("Dwadawdawdaw"),
      ),
    ],
  );
  blocTest(
    "Should return proper SignInFormState when LogInWithEmailAndPassword Event is sent with good credentials",
    build: () => SignInFormBloc(_mockAuthFacade),
    act: (SignInFormBloc bloc) {
      bloc.add(const EmailChanged("email@email.com"));
      bloc.add(const PasswordChanged("Test123"));
      bloc.add(const SignInWithEmailAndPassword());
    },
    expect: [
      SignInFormState(
        password: Password(""),
        authFailureOrSuccessOption: none(),
        isSubmitting: false,
        emailAddress: EmailAddress("email@email.com"),
      ),
      SignInFormState(
        password: Password("Test123"),
        authFailureOrSuccessOption: none(),
        isSubmitting: false,
        emailAddress: EmailAddress("email@email.com"),
      ),
      SignInFormState(
        password: Password("Test123"),
        authFailureOrSuccessOption: none(),
        isSubmitting: true,
        emailAddress: EmailAddress("email@email.com"),
      ),
      SignInFormState(
        password: Password("Test123"),
        authFailureOrSuccessOption: some(const Right(unit)),
        isSubmitting: false,
        emailAddress: EmailAddress("email@email.com"),
      ),
    ],
  );
  blocTest(
    "Should return proper SignInFormState when LogInWithFacebook Event is sent",
    build: () => SignInFormBloc(_mockAuthFacade),
    act: (SignInFormBloc bloc) {
      bloc.add(const SignInWithFacebook());
    },
    expect: [
      SignInFormState(
        password: Password(""),
        authFailureOrSuccessOption: none(),
        isSubmitting: true,
        emailAddress: EmailAddress(""),
      ),
      SignInFormState(
        password: Password(""),
        authFailureOrSuccessOption: some(const Right(unit)),
        isSubmitting: false,
        emailAddress: EmailAddress(""),
      ),
    ],
  );
  blocTest(
    "Should return proper SignInFormState when LogInWithGoogle Event is sent",
    build: () => SignInFormBloc(_mockAuthFacade),
    act: (SignInFormBloc bloc) {
      bloc.add(const SignInWithGoogle());
    },
    expect: [
      SignInFormState(
        password: Password(""),
        authFailureOrSuccessOption: none(),
        isSubmitting: true,
        emailAddress: EmailAddress(""),
      ),
      SignInFormState(
        password: Password(""),
        authFailureOrSuccessOption: some(const Right(unit)),
        isSubmitting: false,
        emailAddress: EmailAddress(""),
      ),
    ],
  );
}
