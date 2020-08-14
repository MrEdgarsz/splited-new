import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:splited/injection.dart';
import 'package:splited/presentation/core/Routes/router.gr.dart';
import 'package:splited/presentation/core/app_widget.dart';
import 'package:splited/presentation/themes/custom_app_theme.dart';
import 'package:splited/presentation/themes/theme_type.dart';

import 'application/themes/theme_bloc.dart';
import 'presentation/core/Localization/app_localizations.dart';
import 'presentation/splashScreen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build();
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
