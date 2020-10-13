import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:splited/presentation/core/Routes/router.gr.dart';
import 'package:splited/presentation/core/scroll_behaviour.dart';
import 'package:splited/presentation/core/widgets/custom_app_bar.dart';
import 'package:splited/presentation/core/widgets/custom_raised_button.dart';
import 'package:splited/presentation/resources/resources.dart';

class NewPasswordSetPage extends StatelessWidget {
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
              child: Image.asset(ForgotPasswordAssets.activationCode),
            ),
            const SizedBox(height: 35),
            Text(
              "Gratulacje!",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            Text(
              "Twoje hasło zostało zmienione.",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 54),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: CustomRaisedButton(
                onPressed: () {
                  // getIt.resetLazySingleton<SendVerificationCodeBloc>();
                  // getIt.resetLazySingleton<CheckVerificationCodeBloc>();
                  // getIt.resetLazySingleton<ChangePasswordBloc>();
                  // ExtendedNavigator.of(context).popUntilPath(Routes.signInPage);
                  ExtendedNavigator.of(context).pop();
                },
                color: const Color(0xff24BA60),
                child: const Text("Powrót do logowania"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
