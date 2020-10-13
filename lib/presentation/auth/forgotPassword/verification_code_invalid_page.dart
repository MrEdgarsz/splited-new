import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:splited/application/auth/forgotPassword/change_password/change_password_bloc.dart';
import 'package:splited/application/auth/forgotPassword/check_verification_code/check_verification_code_bloc.dart';
import 'package:splited/application/auth/forgotPassword/send_verification_code/send_verification_code_bloc.dart';
import 'package:splited/injection.dart';
import 'package:splited/presentation/core/Routes/router.gr.dart';
import 'package:splited/presentation/core/scroll_behaviour.dart';
import 'package:splited/presentation/core/widgets/custom_app_bar.dart';
import 'package:splited/presentation/core/widgets/custom_raised_button.dart';
import 'package:splited/presentation/resources/resources.dart';

class VerificationCodeInvalidPage extends StatelessWidget {
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
              child: Image.asset(ForgotPasswordAssets.passwordCouldntBeReseted),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Niestety podany kod jest nie prawidłowy lub zdążył wygasnąć.",
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 44),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: CustomRaisedButton(
                      onPressed: () {
                        // getIt.resetLazySingleton<SendVerificationCodeBloc>();
                        // getIt.resetLazySingleton<CheckVerificationCodeBloc>();
                        // getIt.resetLazySingleton<ChangePasswordBloc>();
                        // ExtendedNavigator.of(context)
                        //     .popUntilPath(Routes.sendVerificationCodePage);
                        ExtendedNavigator.of(context)
                            .push(Routes.newPasswordSetPage);
                      },
                      color: const Color(0xff24BA60),
                      child: const Text("Spróbuj ponownie"),
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Container(
                    width: double.infinity,
                    child: CustomRaisedButton(
                      onPressed: () {
                        getIt.resetLazySingleton<SendVerificationCodeBloc>();
                        getIt.resetLazySingleton<CheckVerificationCodeBloc>();
                        getIt.resetLazySingleton<ChangePasswordBloc>();
                        ExtendedNavigator.of(context)
                            .popUntilPath(Routes.signInPage);
                      },
                      color: Theme.of(context).primaryColor,
                      child: const Text("Powrót do logowania"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
