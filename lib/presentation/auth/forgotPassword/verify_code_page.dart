import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splited/application/auth/forgotPassword/check_verification_code/check_verification_code_bloc.dart';
import 'package:splited/application/auth/forgotPassword/send_verification_code/send_verification_code_bloc.dart';
import 'package:splited/domain/auth/value_objects/email_address.dart';
import 'package:splited/injection.dart';
import 'package:splited/presentation/core/Routes/router.gr.dart';
import 'package:splited/presentation/core/complementary_functions.dart';
import 'package:splited/presentation/core/scroll_behaviour.dart';
import 'package:splited/presentation/core/widgets/custom_app_bar.dart';
import 'package:splited/presentation/core/widgets/custom_raised_button.dart';
import 'package:splited/presentation/core/widgets/single_digit_text_field_form.dart';
import 'package:splited/presentation/resources/resources.dart';

class VerifyCodePage extends StatelessWidget {
  final EmailAddress emailAddress;

  const VerifyCodePage({Key key, @required this.emailAddress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MyListView(
          children: [
            CustomAppBar.back(
              title: "Przypomnij hasło",
              onIconPressed: () {
                Feedback.forTap(context);
                getIt.resetLazySingleton<SendVerificationCodeBloc>();
                ExtendedNavigator.of(context).maybePop();
              },
            ),
            const SizedBox(height: 41),
            Container(
              width: 95,
              height: 120,
              child: Image.asset(ForgotPasswordAssets.activationCode),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 39),
              child: Text(
                "Podaj 6 cyfrowy kod z wiadomości e-mail",
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 64),
            Text(
              "Kod weryfikacyjny",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 22),
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
                      print("Co jest kurwa");
                      ExtendedNavigator.of(context)
                          .popUntilPath(Routes.verifyCodePage);
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
                    child: Column(
                      children: [
                        SingleDigitTextFieldForm.verificationCode(
                          showError: state.showErrors,
                          onChanged: (int index, String value) {
                            context.bloc<CheckVerificationCodeBloc>().add(
                                  CheckVerificationCodeEvent
                                      .verificationCodeChanged(
                                    value,
                                    index,
                                  ),
                                );
                          },
                        ),
                        const SizedBox(height: 27),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 55),
                          width: double.infinity,
                          child: CustomRaisedButton(
                            onPressed: () {
                              context.bloc<CheckVerificationCodeBloc>().add(
                                    CheckVerificationCodeEvent.verifyCode(
                                        emailAddress),
                                  );
                            },
                            color: Theme.of(context).primaryColor,
                            child: const Text("Resetuj hasło"),
                          ),
                        ),
                      ],
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
