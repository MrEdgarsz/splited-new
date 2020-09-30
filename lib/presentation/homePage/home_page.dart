import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:native_color/native_color.dart';
import 'package:splited/application/auth/register_from/register_bloc.dart';
import 'package:splited/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:splited/injection.dart';
import 'package:splited/presentation/core/Routes/router.gr.dart';
import 'package:splited/presentation/core/scroll_behaviour.dart';
import 'package:splited/presentation/core/widgets/custom_raised_button.dart';
import 'package:splited/presentation/resources/resources.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 43),
        child: MyListView(
          children: <Widget>[
            const SizedBox(height: 50),
            Text(
              "SplitEd",
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 64),
            Image.asset(
              HomePageAssets.people,
              height: 160,
            ),
            const SizedBox(height: 60),
            Text(
              "SplitEd to aplikacja, która pozwala w łatwy sposób dzielić rachunki między grupę ludzi.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomRaisedButton(
                onPressed: () {
                  getIt.resetLazySingleton<SignInFormBloc>();
                  ExtendedNavigator.of(context).push(Routes.signInPage);
                },
                color: HexColor("#247DBA"),
                child: Text(
                  "Logowanie",
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomRaisedButton(
                onPressed: () {
                  getIt.resetLazySingleton<RegisterBloc>();
                  ExtendedNavigator.of(context).push(Routes.registerPage);
                },
                color: HexColor("#24BA60"),
                child: Text(
                  "Rejestracja",
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
