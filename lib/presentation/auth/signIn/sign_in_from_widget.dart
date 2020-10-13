import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splited/application/auth/auth_bloc.dart';
import 'package:splited/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:splited/presentation/core/Routes/router.gr.dart';
import 'package:splited/presentation/core/complementary_functions.dart';
import 'package:splited/presentation/core/widgets/custom_raised_button.dart';
import 'package:splited/presentation/core/widgets/custom_text_from_field.dart';
import 'package:splited/presentation/core/widgets/text_divider.dart';

import '../../../injection.dart';

class SignInFormWidget extends StatelessWidget {
  const SignInFormWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (BuildContext context, SignInFormState state) {
        if (state.isSubmitting) {
          FocusScope.of(context).unfocus();
          showLoadingDialog(context);
        } else {
          ExtendedNavigator.of(context).popUntilPath(Routes.signInPage);
        }
        state.authFailureOrSuccessOption.fold(
          () {},
          (some) => some.fold(
            (l) => l.maybeMap(
              serverError: (_) => showErrorDialog(
                context,
                "Błąd Serwera",
                "Wystąpił błąd serwera, przepraszamy za niedogodności. Prosimy spróbować ponownie za kilka minut lub skontaktować się z administratorem usługi",
              ),
              invalidCredentials: (_) => showErrorDialog(
                context,
                "Nieprawidłowe dane",
                "Nasz system nie może odnaleźć konta powiązanego z takim zestawem danych.",
              ),
              internetConnectionNotAvailable: (_) => showErrorDialog(
                context,
                "Brak Internetu",
                "Nie możemy połączyć się z serwerami SplitEd. Sprawdź swoje połączenie internetowe i spróbuj ponownie.",
              ),
              accountWasCreatedWithDiffrentService: (_) => showErrorDialog(
                context,
                "Autoryzacja innym serwisem",
                "Konto o podanym adresie e-mail zostało utworzone przez inny serwis, zaloguj się korzystając z tego serwisu.",
              ),
              orElse: () {},
            ),
            (_) {
              context
                  .bloc<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
              print("ZALOGOWANY KURŁA");
            },
          ),
        );
      },
      builder: (BuildContext context, SignInFormState state) {
        return WillPopScope(
          onWillPop: () async {
            if (state.isSubmitting) {
              return false;
            } else {
              return true;
            }
          },
          child: Form(
            autovalidate: false,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(58, 35, 58, 0),
                  child: Column(
                    children: <Widget>[
                      CustomTextFormField(
                        labelText: "E-mail",
                        validator: null,
                        onChanged: (value) {
                          context
                              .bloc<SignInFormBloc>()
                              .add(SignInFormEvent.emailChanged(value));
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                      CustomTextFormField(
                        labelText: "Hasło",
                        onChanged: (value) {
                          context
                              .bloc<SignInFormBloc>()
                              .add(SignInFormEvent.passwordChanged(value));
                        },
                        validator: null,
                        obscureText: true,
                      ),
                      const Text(
                        "Nie pamiętasz hasła?",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff247DBA),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Container(
                        width: double.infinity,
                        child: CustomRaisedButton(
                          onPressed: () {
                            getIt<SignInFormBloc>().add(const SignInFormEvent
                                .signInWithEmailAndPassword());
                          },
                          color: const Color(0xff247DBA),
                          child: Text(
                            "Zaloguj",
                            style: Theme.of(context).textTheme.button,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 26),
                GestureDetector(
                  onTap: () {
                    Feedback.forTap(context);
                    ExtendedNavigator.of(context).replace(Routes.registerPage);
                  },
                  child: const Text(
                    "Nie masz jeszcze konta? Zarejestruj się!",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff247DBA),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(height: 26),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 37),
                  child: TextDivider(text: "Zaloguj przez inny serwis"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(58, 15, 58, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        child: CustomRaisedButton(
                          onPressed: () {
                            getIt<SignInFormBloc>().add(
                              const SignInFormEvent.signInWithGoogle(),
                            );
                          },
                          color: const Color(0xffDE5246),
                          child: const Text(
                            "Zaloguj przez konto Google",
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xffEBEBEB),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        child: CustomRaisedButton(
                          onPressed: () {
                            getIt<SignInFormBloc>().add(
                              const SignInFormEvent.signInWithFacebook(),
                            );
                          },
                          color: const Color(0xff3B5998),
                          child: const Text(
                            "Zaloguj przez portal Facebook",
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xffEBEBEB),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
