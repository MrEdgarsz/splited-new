// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../domain/auth/accountTypes.dart';
import '../../auth/linking_accounts/linking_join.dart';
import '../../auth/linking_accounts/linking_singIn.dart';
import '../../auth/register/register_page.dart';
import '../../auth/signIn/sign_in_page.dart';
import '../../homePage/home_page.dart';
import '../../splashScreen/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String homePage = '/home-page';
  static const String signInPage = '/sign-in-page';
  static const String registerPage = '/register-page';
  static const String linkingAccountSignIn = '/linking-account-sign-in';
  static const String linkingAccountJoinAccount =
      '/linking-account-join-account';
  static const all = <String>{
    splashScreen,
    homePage,
    signInPage,
    registerPage,
    linkingAccountSignIn,
    linkingAccountJoinAccount,
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
    RouteDef(Routes.linkingAccountSignIn, page: LinkingAccountSignIn),
    RouteDef(Routes.linkingAccountJoinAccount, page: LinkingAccountJoinAccount),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SignInPage(),
        settings: data,
      );
    },
    RegisterPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const RegisterPage(),
        settings: data,
      );
    },
    LinkingAccountSignIn: (data) {
      final args = data.getArgs<LinkingAccountSignInArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => LinkingAccountSignIn(
          key: args.key,
          signInMethods: args.signInMethods,
          accountType: args.accountType,
        ),
        settings: data,
      );
    },
    LinkingAccountJoinAccount: (data) {
      final args =
          data.getArgs<LinkingAccountJoinAccountArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => LinkingAccountJoinAccount(
          key: args.key,
          accountType: args.accountType,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// LinkingAccountSignIn arguments holder class
class LinkingAccountSignInArguments {
  final Key key;
  final List<String> signInMethods;
  final AccountType accountType;
  LinkingAccountSignInArguments(
      {this.key, @required this.signInMethods, @required this.accountType});
}

/// LinkingAccountJoinAccount arguments holder class
class LinkingAccountJoinAccountArguments {
  final Key key;
  final AccountType accountType;
  LinkingAccountJoinAccountArguments({this.key, @required this.accountType});
}
