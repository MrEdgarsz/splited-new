import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splited/application/auth/forgotPassword/change_password/change_password_bloc.dart';
import 'package:splited/application/auth/forgotPassword/check_verification_code/check_verification_code_bloc.dart';
import 'package:splited/domain/auth/value_objects/email_address.dart';
import 'package:splited/domain/auth/value_objects/verification_code.dart';
import 'package:splited/injection.dart';
import 'package:splited/presentation/core/Routes/router.gr.dart';
import 'package:splited/presentation/core/complementary_functions.dart';
import 'package:splited/presentation/core/scroll_behaviour.dart';
import 'package:splited/presentation/core/widgets/custom_app_bar.dart';
import 'package:splited/presentation/core/widgets/custom_raised_button.dart';
import 'package:splited/presentation/core/widgets/custom_text_from_field.dart';
import 'package:splited/presentation/resources/resources.dart';

class SetNewPasswordPage extends StatelessWidget {
  // final EmailAddress emailAddress;
  // final VerificationCode verificationCode;
// @required this.emailAddress, @required this.verificationCode
  const SetNewPasswordPage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MyListView(
          children: [
            const CustomAppBar.onlyTitle(
              title: "Przypomnij hasło",
            ),
            const SizedBox(height: 41),
            Container(
              width: 95,
              height: 120,
              child: Image.asset(ForgotPasswordAssets.newPassword),
            ),
            const SizedBox(height: 30),
            Text(
              "Wprowadź nowe hasło",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 44),
            BlocProvider(
              create: (context) => getIt.get<CheckVerificationCodeBloc>(),
              child: BlocConsumer<CheckVerificationCodeBloc,
                  CheckVerificationCodeState>(
                listener: (context, state) {
                  if (state.isSubmitting) {
                    FocusScope.of(context).unfocus();
                    showLoadingDialog(context);
                  } else {
                    if (ExtendedNavigator.of(context).canPop()) {
                      ExtendedNavigator.of(context)
                          .popUntilPath(Routes.setNewPasswordPage);
                    }
                  }
                  state.failureOrSuccessOption.fold(
                    () => null,
                    (some) => some.fold(
                      (l) => l.maybeMap(
                        serverError: (_) => showErrorDialog(
                          context,
                          "Błąd Serwera",
                          "Wystąpił błąd serwera, przepraszamy za niedogodności. Prosimy spróbować ponownie za kilka minut lub skontaktować się z administratorem usługi",
                        ),
                        verificationCodeNotFound: (_) {
                          print("VerificationCodeNotFound");
                        },
                        orElse: () {},
                      ),
                      (r) {
                        print("Poszło");
                      },
                    ),
                  );
                },
                builder: (context, state) {
                  return WillPopScope(
                    onWillPop: () async => !state.isSubmitting,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          CustomTextFormField(
                            labelText: "Hasło",
                            onChanged: (value) {
                              context.bloc<ChangePasswordBloc>().add(
                                  ChangePasswordEvent.passwordChanged(value));
                            },
                            showToolTip: true,
                            validator: (_) {
                              return context
                                  .bloc<ChangePasswordBloc>()
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
                              context.bloc<ChangePasswordBloc>().add(
                                  ChangePasswordEvent.passwordRepeatChanged(
                                      value));
                            },
                            validator: (_) {
                              final ChangePasswordState currentState =
                                  context.bloc<ChangePasswordBloc>().state;
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
                          Container(
                            width: double.infinity,
                            child: CustomRaisedButton(
                              onPressed: () {
                                context.bloc<ChangePasswordBloc>().add(
                                      ChangePasswordEvent.changePassword(
                                        EmailAddress(
                                            "kontaktedgarsz@gmail.com"),
                                        VerificationCode(
                                            ["1", "2", "3", "4", "5", "6"]),
                                      ),
                                    );
                              },
                              color: Theme.of(context).primaryColor,
                              child: const Text("Zmień Hasło"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
