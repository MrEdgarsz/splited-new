import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splited/application/themes/theme_bloc.dart';
import 'package:splited/injection.dart';
import 'package:splited/presentation/auth/linking_accounts/linking_singIn.dart';
import 'package:splited/presentation/splashScreen/splash_screen.dart';
import 'package:splited/presentation/themes/custom_app_theme.dart';
import 'package:splited/presentation/themes/theme_type.dart';

import 'Localization/app_localizations.dart';
import 'Routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      cubit: getIt.get<ThemeBloc>(),
      builder: (context, state) {
        return MaterialApp(
          title: 'SplitEd',
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
}
