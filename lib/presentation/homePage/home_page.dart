import 'package:auto_route/auto_route.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_color/native_color.dart';
import 'package:splited/application/themes/theme_bloc.dart';
import 'package:splited/presentation/core/Localization/app_localizations.dart';
import 'package:splited/presentation/core/Routes/router.gr.dart';
import 'package:splited/presentation/core/scroll_behaviour.dart';
import 'package:splited/presentation/core/widgets/custom_raised_button.dart';
import 'package:splited/presentation/homePage/home_page_assets.dart';

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
              style: Theme.of(context).textTheme.title,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 64),
            Image.asset(
              HomePageAssets.people,
              height: 160,
            ),
            const SizedBox(height: 60),
            Text(
              AppLocalizations.of(context).translate("appDescription"),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.body1,
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomRaisedButton(
                onPressed: () {
                  ExtendedNavigator.of(context).pushNamed(Routes.signInPage);
                },
                color: HexColor("#247DBA"),
                child: Text(
                  AppLocalizations.of(context).translate("signingIn"),
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomRaisedButton(
                onPressed: () {
                  ExtendedNavigator.of(context).pushNamed(Routes.registerPage);
                },
                color: HexColor("#24BA60"),
                child: Text(
                  AppLocalizations.of(context).translate("registration"),
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
