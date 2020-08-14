import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:splited/application/themes/theme_bloc.dart';
import 'package:splited/injection.dart';
import 'package:splited/presentation/auth/linking_accounts/linking_singIn.dart';
import 'package:splited/presentation/splashScreen/splash_screen.dart';
import 'package:splited/presentation/themes/custom_app_theme.dart';
import 'package:splited/presentation/themes/theme_type.dart';

import 'Localization/app_localizations.dart';
import 'Routes/router.gr.dart';

class AppWidget extends StatefulWidget {
  AppWidget({Key key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final ThemeBloc _bloc = getIt.get<ThemeBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: _bloc,
      builder: (context, state) {
        return MaterialApp(
          title: 'SplitEd',
          supportedLocales: [
            const Locale('en', 'US'),
            const Locale('pl', 'PL'),
          ],
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          localeResolutionCallback: (locale, supportedLocales) {
            for (final supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale?.languageCode &&
                  supportedLocale.countryCode == locale?.countryCode) {
                return supportedLocale;
              }
            }
            return supportedLocales.first;
          },
          theme: (state as ThemeState).data,
          darkTheme: ((state as ThemeState).type == ThemeType.system)
              ? CustomAppTheme.dark
              : null,
          builder: (ctx, nativeNavigator) =>
              ExtendedNavigator<Router>(router: Router()),
          home: SplashScreen(),
        );
      },
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }
}
