import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_color/native_color.dart';
import 'package:splited/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:splited/domain/auth/accountTypes.dart';
import 'package:splited/presentation/core/Localization/app_localizations.dart';
import 'package:splited/presentation/core/Routes/router.gr.dart';
import 'package:splited/presentation/core/complementary_functions.dart';
import 'package:splited/presentation/core/scroll_behaviour.dart';
import 'package:splited/presentation/core/widgets/custom_app_bar.dart';
import 'package:splited/presentation/core/widgets/custom_raised_button.dart';
import 'package:splited/presentation/core/widgets/custom_text_from_field.dart';
import 'package:splited/presentation/core/widgets/text_divider.dart';

import '../../../injection.dart';

class LinkingAccountSignIn extends StatelessWidget {
  final List<String> signInMethods;
  final AccountType accountType;
  const LinkingAccountSignIn(
      {Key key, @required this.signInMethods, @required this.accountType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MyListView(
          children: <Widget>[
            CustomAppBar.back(
              title: AppLocalizations.of(context).translate("LinkingAccounts"),
              subtitle:
                  "Łączenie z kontem ${accountType.map(standard: (_) => 'podstawowym', google: (_) => 'google', facebook: (_) => 'facebook')}",
              onIconPressed: () {
                Feedback.forTap(context);
                ExtendedNavigator.of(context).pop();
              },
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: BlocProvider(
                create: (_) => getIt<SignInFormBloc>(),
                child: BlocConsumer<SignInFormBloc, SignInFormState>(
                  listener: (BuildContext context, SignInFormState state) {
                    print("halo?");
                    state.authFaliureOrSuccessOption.fold(
                      () {},
                      (some) => some.fold(
                        (l) => l.maybeMap(
                          serverError: (_) => showErrorDialog(
                            context,
                            "AF_serverError_title",
                            "AF_serverError_desc",
                          ),
                          invalidCredentials: (_) => showErrorDialog(
                            context,
                            "AF_invalidCredentials_title",
                            "AF_invalidCredentials_desc",
                          ),
                          internetConnectionNotAvailable: (_) =>
                              showErrorDialog(
                            context,
                            "AF_internetConnectionNotAvailable_title",
                            "AF_internetConnectionNotAvailable_desc",
                          ),
                          accountCanBeLinked: (e) => showLinkingDialog(
                            context,
                            e.listOfLoginMethods,
                            e.linkWith,
                          ),
                          orElse: () {},
                        ),
                        (_) {
                          print("halo co jest kurwa");
                          ExtendedNavigator.of(context).push(
                            Routes.linkingAccountJoinAccount,
                            arguments: LinkingAccountJoinAccountArguments(
                                accountType: accountType),
                          );
                        },
                      ),
                    );
                  },
                  builder: (BuildContext context, SignInFormState state) {
                    return Column(
                      children: <Widget>[
                        Text(
                          "Zaloguj się do swojego konta jedną z wcześniej połączonych metod logowania dostępnych poniżej",
                          style: Theme.of(context).textTheme.body1.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 30),
                        if (signInMethods.contains("password"))
                          Column(
                            children: <Widget>[
                              const TextDivider(
                                  text: "Logowanie adresem e-mail"),
                              const SizedBox(height: 26),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Form(
                                  autovalidate: false,
                                  child: Column(
                                    children: <Widget>[
                                      CustomTextFormField(
                                        labelText: AppLocalizations.of(context)
                                            .translate("email"),
                                        validator: null,
                                        onChanged: (value) {
                                          getIt<SignInFormBloc>().add(
                                              SignInFormEvent.emailChanged(
                                                  value));
                                        },
                                        keyboardType:
                                            TextInputType.emailAddress,
                                      ),
                                      CustomTextFormField(
                                        labelText: AppLocalizations.of(context)
                                            .translate("password"),
                                        onChanged: (value) {
                                          getIt<SignInFormBloc>().add(
                                              SignInFormEvent.passwordChanged(
                                                  value));
                                        },
                                        validator: null,
                                        obscureText: true,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        child: CustomRaisedButton(
                                          onPressed: () {
                                            getIt<SignInFormBloc>().add(
                                                const SignInFormEvent
                                                    .signInWithEmailAndPassword());
                                          },
                                          color: HexColor("#247DBA"),
                                          child: Text(
                                            AppLocalizations.of(context)
                                                .translate("signIn"),
                                            style: Theme.of(context)
                                                .textTheme
                                                .button,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 26),
                            ],
                          ),
                        if (signInMethods.contains("google.com") ||
                            signInMethods.contains("facebook.com"))
                          Column(
                            children: <Widget>[
                              TextDivider(
                                  text: AppLocalizations.of(context)
                                      .translate("signInWithDifferentService")),
                              const SizedBox(height: 26),
                            ],
                          ),
                        if (signInMethods.contains("google.com"))
                          Column(
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                child: CustomRaisedButton(
                                  onPressed: () {
                                    context.bloc<SignInFormBloc>().add(
                                          const SignInFormEvent
                                              .signInWithGoogle(),
                                        );
                                  },
                                  color: HexColor("#DE5246"),
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate("signInWithGoogle"),
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: HexColor("#EBEBEB"),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        if (signInMethods.contains("facebook.com"))
                          Container(
                            width: double.infinity,
                            child: CustomRaisedButton(
                              onPressed: () {},
                              color: HexColor("#3B5998"),
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate("signInWithFacebook"),
                                style: TextStyle(
                                  fontSize: 11,
                                  color: HexColor("#EBEBEB"),
                                ),
                              ),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
