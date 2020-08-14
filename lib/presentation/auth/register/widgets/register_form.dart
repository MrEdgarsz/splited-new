import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_color/native_color.dart';
import 'package:splited/application/auth/register_from/register_bloc.dart';
import 'package:splited/presentation/core/Localization/app_localizations.dart';
import 'package:splited/presentation/core/complementary_functions.dart';
import 'package:splited/presentation/core/widgets/checkbox.dart';
import 'package:splited/presentation/core/widgets/custom_raised_button.dart';
import 'package:splited/presentation/core/widgets/custom_text_from_field.dart';

import '../register_page_assets.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (BuildContext context, RegisterState state) {
        state.authFaliureOrSuccessOption.fold(
          () {},
          (some) => some.fold(
            (l) => l.maybeMap(
              serverError: (_) => showErrorDialog(
                context,
                "AF_serverError_title",
                "AF_serverError_desc",
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
              emailAlreadyInUse: (_) => showErrorDialog(
                context,
                "AF_emailAlreadyInUse_title",
                "AF_emailAlreadyInUse_desc",
              ),
              orElse: () {},
            ),
            (_) {
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
                      labelText:
                          AppLocalizations.of(context).translate("email"),
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
                                (l) => AppLocalizations.of(context)
                                    .translate("emailNotValid"),
                                (_) => null);
                      },
                    ),
                    CustomTextFormField(
                      labelText:
                          AppLocalizations.of(context).translate("password"),
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
                            style: Theme.of(context).textTheme.body1.copyWith(
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
                            style: Theme.of(context).textTheme.body1.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            AppLocalizations.of(context)
                                .translate("passwordRequirements_2"),
                            style: Theme.of(context).textTheme.body1.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            AppLocalizations.of(context)
                                .translate("passwordRequirements_3"),
                            style: Theme.of(context).textTheme.body1.copyWith(
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
                          return AppLocalizations.of(context)
                              .translate("passwordsDoNotMatch");
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
                  errorMessage: AppLocalizations.of(context)
                      .translate("checkbox_required"),
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
                        style: Theme.of(context).textTheme.body1.copyWith(
                            fontSize: 12, fontWeight: FontWeight.bold),
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
                    AppLocalizations.of(context).translate("signIn"),
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
