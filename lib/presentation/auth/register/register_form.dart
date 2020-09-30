import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_color/native_color.dart';
import 'package:splited/application/auth/auth_bloc.dart';
import 'package:splited/application/auth/register_from/register_bloc.dart';
import 'package:splited/presentation/core/complementary_functions.dart';
import 'package:splited/presentation/core/widgets/checkbox.dart';
import 'package:splited/presentation/core/widgets/custom_raised_button.dart';
import 'package:splited/presentation/core/widgets/custom_text_from_field.dart';
import 'package:splited/presentation/resources/resources.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (BuildContext context, RegisterState state) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: Row(
              children: [
                CircularProgressIndicator(),
                Text("Ładowanie..."),
              ],
            ),
          ),
        );
        state.authFailureOrSuccessOption.fold(
          () {},
          (some) => some.fold(
            (l) => l.maybeMap(
              serverError: (_) => showErrorDialog(
                context,
                "Błąd Serwera",
                "Wystąpił błąd serwera, przepraszamy za niedogodności. Prosimy spróbować ponownie za kilka minut lub skontaktować się z administratorem usługi",
              ),
              internetConnectionNotAvailable: (_) => showErrorDialog(
                context,
                "Brak Internetu",
                "Nie możemy połączyć się z serwerami SplitEd. Sprawdź swoje połączenie internetowe i spróbuj ponownie.",
              ),
              emailAlreadyInUse: (_) => showErrorDialog(
                context,
                "E-mail już zarejestrowany",
                "Konto o podanym adresie e-mail już istnieje w naszym serwisie.",
              ),
              orElse: () {},
            ),
            (_) {
              context.bloc<AuthBloc>().add(AuthEvent.authCheckRequested());
              print("ZALOGOWANY KURŁA");
            },
          ),
        );
      },
      builder: (BuildContext context, RegisterState state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(58, 25, 58, 0),
          child: Column(
            children: <Widget>[
              Image.asset(
                RegisterPageAssets.peoplePhoto,
                scale: 1.0,
              ),
              const SizedBox(height: 35),
              Form(
                autovalidate: state.showErrors,
                child: Column(
                  children: <Widget>[
                    CustomTextFormField(
                      labelText: "E-mail",
                      onChanged: (value) {
                        context
                            .bloc<RegisterBloc>()
                            .add(RegisterEvent.emailChanged(value));
                      },
                      keyboardType: TextInputType.emailAddress,
                      validator: (_) {
                        return context
                            .bloc<RegisterBloc>()
                            .state
                            .emailAddress
                            .value
                            .fold(
                                (l) =>
                                    "Wartość nie jest poprawnym adresem e-mail",
                                (_) => null);
                      },
                    ),
                    CustomTextFormField(
                      labelText: "Hasło",
                      onChanged: (value) {
                        context
                            .bloc<RegisterBloc>()
                            .add(RegisterEvent.passwordChanged(value));
                      },
                      showToolTip: true,
                      validator: (_) {
                        return context
                            .bloc<RegisterBloc>()
                            .state
                            .password
                            .value
                            .fold(
                                (l) =>
                                    "Hasło nie spełnia wymagań bezpieczeństwa",
                                (_) => null);
                      },
                      obscureText: true,
                      tooltipContent: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            "Hasło musi posiadać",
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                            softWrap: false,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 15),
                          Text(
                            "Przynajmniej jedną małą literę",
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Przynajmniej jedną wielką literę",
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Przynajmniej jedną cyfrę",
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    CustomTextFormField(
                      labelText: "Powtórz Hasło",
                      onChanged: (value) {
                        context
                            .bloc<RegisterBloc>()
                            .add(RegisterEvent.passwordRepeatChanged(value));
                      },
                      validator: (_) {
                        final RegisterState currentState =
                            context.bloc<RegisterBloc>().state;
                        final bool passwordsMatch = (currentState.password ==
                            currentState.passwordRepeat);
                        if (!passwordsMatch) {
                          return "Hasła się nie zgadzają";
                        }
                        return null;
                      },
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: CustomCheckBox(
                  errorMessage: "Pole jest wymagane",
                  showError: (context.bloc<RegisterBloc>().state.showErrors)
                      ? (context.bloc<RegisterBloc>().state.termsAccepted)
                          ? false
                          : true
                      : false,
                  description: GestureDetector(
                    onTap: () {
                      Feedback.forTap(context);
                      //TODO: navigate to terms and agreements
                    },
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 12, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(text: "Potwierdzam zapoznanie się z "),
                          TextSpan(
                            text: "regulaminem",
                            style: TextStyle(
                              color: HexColor("#247DBA"),
                            ),
                          ),
                          TextSpan(
                            text: " i jego akceptację",
                          ),
                        ],
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    context
                        .bloc<RegisterBloc>()
                        .add(RegisterEvent.termsAcceptanceChanged(value));
                  },
                ),
              ),
              const SizedBox(height: 26),
              Container(
                width: double.infinity,
                child: CustomRaisedButton(
                  onPressed: () {
                    context.bloc<RegisterBloc>().add(
                        const RegisterEvent.registerWithEmailAndPassword());
                  },
                  color: HexColor("#247DBA"),
                  child: Text(
                    "Zarejestruj",
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
