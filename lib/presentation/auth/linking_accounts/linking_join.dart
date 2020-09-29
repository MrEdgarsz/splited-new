import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_color/native_color.dart';
import 'package:splited/application/auth/linking_accounts/linking_bloc.dart';
import 'package:splited/domain/auth/accountTypes.dart';
import 'package:splited/presentation/core/complementary_functions.dart';
import 'package:splited/presentation/core/scroll_behaviour.dart';
import 'package:splited/presentation/core/widgets/checkbox.dart';
import 'package:splited/presentation/core/widgets/custom_app_bar.dart';
import 'package:splited/presentation/core/widgets/custom_raised_button.dart';
import 'package:splited/presentation/core/widgets/custom_text_from_field.dart';

import '../../../injection.dart';

class LinkingAccountJoinAccount extends StatelessWidget {
  final AccountType accountType;
  const LinkingAccountJoinAccount({Key key, @required this.accountType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomAppBar.back(
              title: "Łączenie kont",
              subtitle: "Łączenie z kontem Google",
              onIconPressed: () {
                Feedback.forTap(context);
                ExtendedNavigator.of(context).pop();
              },
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      "Zaloguj się teraz metodą logowania którą chcesz podłączyć do konta",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    accountType.map(
                      standard: (_) => BlocConsumer<LinkingBloc, LinkingState>(
                          listener: (BuildContext context, LinkingState state) {
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
                              internetConnectionNotAvailable: (_) =>
                                  showErrorDialog(
                                context,
                                "Brak Internetu",
                                "Nie możemy połączyć się z serwerami SplitEd. Sprawdź swoje połączenie internetowe i spróbuj ponownie.",
                              ),
                              accountCanBeLinked: (e) => showLinkingDialog(
                                context,
                                e.listOfLoginMethods,
                                e.linkWith,
                              ),
                              orElse: () {},
                            ),
                            (_) {
                              print("ZALOGOWANY KURŁA");
                            },
                          ),
                        );
                      }, builder: (BuildContext context, LinkingState state) {
                        return Form(
                          autovalidate: state.showErrors,
                          child: Column(
                            children: <Widget>[
                              CustomTextFormField(
                                labelText: "E-mail",
                                onChanged: (value) {
                                  context
                                      .bloc<LinkingBloc>()
                                      .add(LinkingEvent.emailChanged(value));
                                },
                                keyboardType: TextInputType.emailAddress,
                                validator: (_) {
                                  return context
                                      .bloc<LinkingBloc>()
                                      .state
                                      .emailAddress
                                      .value
                                      .fold(
                                          (l) =>
                                              "Podaj prawidłowy adres e-mail",
                                          (_) => null);
                                },
                              ),
                              CustomTextFormField(
                                labelText: "Hasło",
                                onChanged: (value) {
                                  context
                                      .bloc<LinkingBloc>()
                                      .add(LinkingEvent.passwordChanged(value));
                                },
                                showToolTip: true,
                                validator: (_) {
                                  return context
                                      .bloc<LinkingBloc>()
                                      .state
                                      .password
                                      .value
                                      .fold((l) => "Hasło jest za słabe",
                                          (_) => null);
                                },
                                obscureText: true,
                                tooltipContent: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      "Hasło musi posiadać",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      softWrap: false,
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(height: 15),
                                    Text(
                                      "Przynajmniej jedną małą literę",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "Przynajmniej jedną wielką literę",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "Przynajmniej jedną cyfrę",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
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
                                  context.bloc<LinkingBloc>().add(
                                      LinkingEvent.passwordRepeatChanged(
                                          value));
                                },
                                validator: (_) {
                                  final LinkingState currentState =
                                      context.bloc<LinkingBloc>().state;
                                  final bool passwordsMatch =
                                      (currentState.password ==
                                          currentState.passwordRepeat);
                                  if (!passwordsMatch) {
                                    return "Hasła się nie zgadzają";
                                  }
                                  return null;
                                },
                                obscureText: true,
                              ),
                              CustomCheckBox(
                                errorMessage: "Pole jest wymagane",
                                showError: (context
                                        .bloc<LinkingBloc>()
                                        .state
                                        .showErrors)
                                    ? (context
                                            .bloc<LinkingBloc>()
                                            .state
                                            .termsAccepted)
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(
                                            text:
                                                "Potwierdzam zapoznanie się z"),
                                        TextSpan(
                                          text: " regulaminem ",
                                          style: TextStyle(
                                            color: HexColor("#247DBA"),
                                          ),
                                        ),
                                        TextSpan(text: "i jego akceptację"),
                                      ],
                                    ),
                                  ),
                                ),
                                onChanged: (value) {
                                  context.bloc<LinkingBloc>().add(
                                      LinkingEvent.termsAcceptanceChanged(
                                          value));
                                },
                              ),
                              const SizedBox(height: 26),
                              Container(
                                width: double.infinity,
                                child: CustomRaisedButton(
                                  onPressed: () {
                                    context.bloc<LinkingBloc>().add(
                                        const LinkingEvent.linkAccounts(
                                            Standard()));
                                  },
                                  color: HexColor("#247DBA"),
                                  child: Text(
                                    "Zaloguj",
                                    style: Theme.of(context).textTheme.button,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                      google: (_) => Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        width: double.infinity,
                        child: CustomRaisedButton(
                          onPressed: () {
                            getIt<LinkingBloc>().add(
                              const LinkingEvent.linkAccounts(Google()),
                            );
                          },
                          color: HexColor("#DE5246"),
                          child: Text(
                            "Zaloguj przez konto Google",
                            style: TextStyle(
                              fontSize: 11,
                              color: HexColor("#EBEBEB"),
                            ),
                          ),
                        ),
                      ),
                      facebook: (_) => Container(
                        width: double.infinity,
                        child: CustomRaisedButton(
                          onPressed: () {
                            getIt<LinkingBloc>().add(
                              const LinkingEvent.linkAccounts(Facebook()),
                            );
                          },
                          color: HexColor("#3B5998"),
                          child: Text(
                            "Zaloguj przez portal Facebook",
                            style: TextStyle(
                              fontSize: 11,
                              color: HexColor("#EBEBEB"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
