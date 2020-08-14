import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_color/native_color.dart';
import 'package:splited/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:splited/presentation/core/Localization/app_localizations.dart';
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
              internetConnectionNotAvailable: (_) => showErrorDialog(
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
              print("ZALOGOWANY KURŁA");
            },
          ),
        );
      },
      builder: (BuildContext context, SignInFormState state) {
        return Form(
          autovalidate: false,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(58, 35, 58, 0),
                child: Column(
                  children: <Widget>[
                    CustomTextFormField(
                      labelText:
                          AppLocalizations.of(context).translate("email"),
                      validator: null,
                      onChanged: (value) {
                        getIt<SignInFormBloc>()
                            .add(SignInFormEvent.emailChanged(value));
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                    CustomTextFormField(
                      labelText:
                          AppLocalizations.of(context).translate("password"),
                      onChanged: (value) {
                        getIt<SignInFormBloc>()
                            .add(SignInFormEvent.passwordChanged(value));
                      },
                      validator: null,
                      obscureText: true,
                    ),
                    Text(
                      AppLocalizations.of(context).translate("forgotPassword"),
                      style: TextStyle(
                        fontSize: 12,
                        color: HexColor("#247DBA"),
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
                        color: HexColor("#247DBA"),
                        child: Text(
                          AppLocalizations.of(context).translate("signIn"),
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
                child: Text(
                  AppLocalizations.of(context).translate("createAccount"),
                  style: TextStyle(
                    fontSize: 12,
                    color: HexColor("#247DBA"),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: TextDivider(
                    text: AppLocalizations.of(context)
                        .translate("signInWithDifferentService")),
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
                    Container(
                      width: double.infinity,
                      child: CustomRaisedButton(
                        onPressed: () {
                          getIt<SignInFormBloc>().add(
                            const SignInFormEvent.signInWithFacebook(),
                          );
                        },
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
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
