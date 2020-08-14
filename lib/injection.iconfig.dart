// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:splited/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:splited/infrastructure/auth/firebase_auth_facade.dart';
import 'package:splited/domain/auth/i_auth_facade.dart';
import 'package:splited/application/auth/linking_accounts/linking_bloc.dart';
import 'package:splited/application/auth/register_from/register_bloc.dart';
import 'package:splited/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:splited/application/themes/theme_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FacebookLogin>(
      () => firebaseInjectableModule.facebooklogin);
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
        g<FirebaseAuth>(),
        g<GoogleSignIn>(),
        g<FacebookLogin>(),
      ));
  g.registerLazySingleton<LinkingBloc>(() => LinkingBloc(g<IAuthFacade>()));
  g.registerLazySingleton<RegisterBloc>(() => RegisterBloc(g<IAuthFacade>()));
  g.registerLazySingleton<SignInFormBloc>(
      () => SignInFormBloc(g<IAuthFacade>()));
  g.registerLazySingleton<ThemeBloc>(() => ThemeBloc());
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
