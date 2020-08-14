import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_color/native_color.dart';
import 'package:splited/application/auth/linking_accounts/linking_bloc.dart';
import 'package:splited/domain/auth/accountTypes.dart';
import 'package:splited/presentation/core/Localization/app_localizations.dart';
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
              title: AppLocalizations.of(context).translate("LinkingAccounts"),
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
                      style: Theme.of(context).textTheme.body1.copyWith(
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
                                labelText: AppLocalizations.of(context)
                                    .translate("email"),
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
                                          (l) => AppLocalizations.of(context)
                                              .translate("emailNotValid"),
                                          (_) => null);
                                },
                              ),
                              CustomTextFormField(
                                labelText: AppLocalizations.of(context)
                                    .translate("password"),
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
                                      .fold(
                                          (l) => AppLocalizations.of(context)
                                              .translate("passwordToWeak"),
                                          (_) => null);
                                },
                                obscureText: true,
                                tooltipContent: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      AppLocalizations.of(context)
                                          .translate("passwordRequirements"),
                                      style: Theme.of(context)
                                          .textTheme
                                          .body1
                                          .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      softWrap: false,
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(height: 15),
                                    Text(
                                      AppLocalizations.of(context)
                                          .translate("passwordRequirements_1"),
                                      style: Theme.of(context)
                                          .textTheme
                                          .body1
                                          .copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      AppLocalizations.of(context)
                                          .translate("passwordRequirements_2"),
                                      style: Theme.of(context)
                                          .textTheme
                                          .body1
                                          .copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      AppLocalizations.of(context)
                                          .translate("passwordRequirements_3"),
                                      style: Theme.of(context)
                                          .textTheme
                                          .body1
                                          .copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomTextFormField(
                                labelText: AppLocalizations.of(context)
                                    .translate("repeatPassword"),
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
                                    return AppLocalizations.of(context)
                                        .translate("passwordsDoNotMatch");
                                  }
                                  return null;
                                },
                                obscureText: true,
                              ),
                              CustomCheckBox(
                                errorMessage: AppLocalizations.of(context)
                                    .translate("checkbox_required"),
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
                                          .body1
                                          .copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(
                                            text: AppLocalizations.of(context)
                                                .translate("termsCheckbox_1")),
                                        TextSpan(
                                          text: AppLocalizations.of(context)
                                              .translate("termsCheckbox_2"),
                                          style: TextStyle(
                                            color: HexColor("#247DBA"),
                                          ),
                                        ),
                                        TextSpan(
                                          text: AppLocalizations.of(context)
                                              .translate("termsCheckbox_3"),
                                        ),
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
                                    AppLocalizations.of(context)
                                        .translate("signIn"),
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
                            AppLocalizations.of(context)
                                .translate("signInWithGoogle"),
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
                            AppLocalizations.of(context)
                                .translate("signInWithFacebook"),
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
