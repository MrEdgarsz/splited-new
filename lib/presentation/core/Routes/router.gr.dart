// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../domain/auth/value_objects/email_address.dart';
import '../../auth/forgotPassword/new_password_set_page.dart';
import '../../auth/forgotPassword/send_verification_code_page.dart';
import '../../auth/forgotPassword/set_new_password_page.dart';
import '../../auth/forgotPassword/verification_code_invalid_page.dart';
import '../../auth/forgotPassword/verify_code_page.dart';
import '../../auth/register/register_page.dart';
import '../../auth/signIn/sign_in_page.dart';
import '../../homePage/home_page.dart';
import '../../splashScreen/splash_screen.dart';
import '../../termsAndRegulations/terms_and_regulations_page.dart';
import 'router.dart';

class Routes {
  static const String splashScreen = '/splash-screen';
  static const String homePage = '/home-page';
  static const String signInPage = '/sign-in-page';
  static const String registerPage = '/register-page';
  static const String sendVerificationCodePage = '/send-verification-code-page';
  static const String verifyCodePage = '/verify-code-page';
  static const String setNewPasswordPage = '/set-new-password-page';
  static const String verificationCodeInvalidPage =
      '/verification-code-invalid-page';
  static const String newPasswordSetPage = '/new-password-set-page';
  static const String termsAndRegulationsPage = '/';
  static const all = <String>{
    splashScreen,
    homePage,
    signInPage,
    registerPage,
    sendVerificationCodePage,
    verifyCodePage,
    setNewPasswordPage,
    verificationCodeInvalidPage,
    newPasswordSetPage,
    termsAndRegulationsPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.registerPage, page: RegisterPage),
    RouteDef(Routes.sendVerificationCodePage, page: SendVerificationCodePage),
    RouteDef(Routes.verifyCodePage, page: VerifyCodePage),
    RouteDef(Routes.setNewPasswordPage, page: SetNewPasswordPage),
    RouteDef(Routes.verificationCodeInvalidPage,
        page: VerificationCodeInvalidPage),
    RouteDef(Routes.newPasswordSetPage, page: NewPasswordSetPage),
    RouteDef(Routes.termsAndRegulationsPage, page: TermsAndRegulationsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SplashScreen(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        transitionDuration: const Duration(milliseconds: 200),
      );
    },
    HomePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        transitionDuration: const Duration(milliseconds: 200),
      );
    },
    SignInPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const SignInPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        transitionDuration: const Duration(milliseconds: 200),
      );
    },
    RegisterPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const RegisterPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        transitionDuration: const Duration(milliseconds: 200),
      );
    },
    SendVerificationCodePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SendVerificationCodePage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        transitionDuration: const Duration(milliseconds: 200),
      );
    },
    VerifyCodePage: (data) {
      final args = data.getArgs<VerifyCodePageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => VerifyCodePage(
          key: args.key,
          emailAddress: args.emailAddress,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        transitionDuration: const Duration(milliseconds: 200),
      );
    },
    SetNewPasswordPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const SetNewPasswordPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        transitionDuration: const Duration(milliseconds: 200),
      );
    },
    VerificationCodeInvalidPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            VerificationCodeInvalidPage(),
        settings: data,
        transitionsBuilder: splitEdTransition,
        transitionDuration: const Duration(milliseconds: 200),
      );
    },
    NewPasswordSetPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            NewPasswordSetPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        transitionDuration: const Duration(milliseconds: 300),
      );
    },
    TermsAndRegulationsPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const TermsAndRegulationsPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        transitionDuration: const Duration(milliseconds: 300),
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// VerifyCodePage arguments holder class
class VerifyCodePageArguments {
  final Key key;
  final EmailAddress emailAddress;
  VerifyCodePageArguments({this.key, @required this.emailAddress});
}
