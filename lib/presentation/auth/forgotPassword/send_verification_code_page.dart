import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splited/application/auth/forgotPassword/check_verification_code/check_verification_code_bloc.dart';
import 'package:splited/application/auth/forgotPassword/send_verification_code/send_verification_code_bloc.dart';
import 'package:splited/injection.dart';
import 'package:splited/presentation/core/Routes/router.gr.dart';
import 'package:splited/presentation/core/complementary_functions.dart';
import 'package:splited/presentation/core/scroll_behaviour.dart';
import 'package:splited/presentation/core/widgets/custom_app_bar.dart';
import 'package:splited/presentation/core/widgets/custom_raised_button.dart';
import 'package:splited/presentation/core/widgets/custom_text_from_field.dart';
import 'package:splited/presentation/resources/resources.dart';

class SendVerificationCodePage extends StatelessWidget {
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
                ExtendedNavigator.of(context).maybePop();
              },
            ),
            const SizedBox(height: 41),
            Container(
              width: 95,
              height: 120,
              child: Image.asset(ForgotPasswordAssets.forgotPassword),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Podaj adres e-mail z którego zostało założone konto. Wyślemy na niego wiadomość z kodem weryfikacyjnym.",
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 52),
            BlocProvider(
              create: (context) => getIt.get<SendVerificationCodeBloc>(),
              child: BlocConsumer<SendVerificationCodeBloc,
                  SendVerificationCodeState>(
                listener: (context, state) {
                  print(state);
                  if (state.isSubmitting) {
                    FocusScope.of(context).unfocus();
                    showLoadingDialog(context);
                  } else {
                    ExtendedNavigator.of(context)
                        .popUntilPath(Routes.sendVerificationCodePage);
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
                        orElse: () {},
                      ),
                      (r) {
                        getIt.resetLazySingleton<CheckVerificationCodeBloc>();
                        ExtendedNavigator.of(context).push(
                          Routes.verifyCodePage,
                          arguments: VerifyCodePageArguments(
                              emailAddress: state.emailAddress),
                        );
                      },
                    ),
                  );
                },
                builder: (context, state) {
                  return WillPopScope(
                    onWillPop: () async => !state.isSubmitting,
                    child: Form(
                      autovalidate: state.showErrors,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 45),
                            child: CustomTextFormField(
                              validator: (_) {
                                return context
                                    .bloc<SendVerificationCodeBloc>()
                                    .state
                                    .emailAddress
                                    .value
                                    .fold(
                                      (l) => "Podaj poprawny adres e-mail",
                                      (r) => null,
                                    );
                              },
                              labelText: "E-mail",
                              onChanged: (value) {
                                context.bloc<SendVerificationCodeBloc>().add(
                                    SendVerificationCodeEvent
                                        .emailAddressChanged(value));
                              },
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            width: double.infinity,
                            child: CustomRaisedButton(
                              onPressed: () {
                                context.bloc<SendVerificationCodeBloc>().add(
                                    const SendVerificationCodeEvent
                                        .sendVerificationCode());
                              },
                              color: Theme.of(context).primaryColor,
                              child: const Text("Wyślij"),
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
