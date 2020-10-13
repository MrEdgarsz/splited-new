// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'application/auth/forgotPassword/change_password/change_password_bloc.dart';
import 'application/auth/forgotPassword/check_verification_code/check_verification_code_bloc.dart';
import 'infrastructure/connection/connection_facade.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_facade.dart';
import 'application/auth/register_from/register_bloc.dart';
import 'application/auth/forgotPassword/send_verification_code/send_verification_code_bloc.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/splashScreen/bloc/splashscreenac_bloc.dart';
import 'application/themes/theme_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<CloudFunctions>(
      () => firebaseInjectableModule.cloudFunctions);
  gh.lazySingleton<ConnectionFacade>(() => ConnectionFacade());
  gh.lazySingleton<FacebookLogin>(() => firebaseInjectableModule.facebooklogin);
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<FacebookLogin>(),
        get<ConnectionFacade>(),
        get<CloudFunctions>(),
      ));
  gh.lazySingleton<RegisterBloc>(() => RegisterBloc(get<IAuthFacade>()));
  gh.lazySingleton<SendVerificationCodeBloc>(
      () => SendVerificationCodeBloc(get<IAuthFacade>()));
  gh.lazySingleton<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.lazySingleton<SplashScreenACBloc>(() => SplashScreenACBloc());
  gh.lazySingleton<ThemeBloc>(() => ThemeBloc());
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.lazySingleton<ChangePasswordBloc>(
      () => ChangePasswordBloc(get<IAuthFacade>()));
  gh.lazySingleton<CheckVerificationCodeBloc>(
      () => CheckVerificationCodeBloc(get<IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
