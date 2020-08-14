// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:splited/presentation/splashScreen/splash_screen.dart';
import 'package:splited/presentation/homePage/home_page.dart';
import 'package:splited/presentation/auth/signIn/sign_in_page.dart';
import 'package:splited/presentation/auth/register/register_page.dart';
import 'package:splited/presentation/auth/linking_accounts/linking_singIn.dart';
import 'package:splited/domain/auth/accountTypes.dart';
import 'package:splited/presentation/auth/linking_accounts/linking_join.dart';

abstract class Routes {
  static const splashScreen = '/';
  static const homePage = '/home-page';
  static const signInPage = '/sign-in-page';
  static const registerPage = '/register-page';
  static const linkingAccountSignIn = '/linking-account-sign-in';
  static const linkingAccountJoinAccount = '/linking-account-join-account';
  static const all = {
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
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashScreen(),
          settings: settings,
        );
      case Routes.homePage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomePage(),
          settings: settings,
        );
      case Routes.signInPage:
        if (hasInvalidArgs<SignInPageArguments>(args)) {
          return misTypedArgsRoute<SignInPageArguments>(args);
        }
        final typedArgs = args as SignInPageArguments ?? SignInPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.registerPage:
        if (hasInvalidArgs<RegisterPageArguments>(args)) {
          return misTypedArgsRoute<RegisterPageArguments>(args);
        }
        final typedArgs =
            args as RegisterPageArguments ?? RegisterPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => RegisterPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.linkingAccountSignIn:
        if (hasInvalidArgs<LinkingAccountSignInArguments>(args,
            isRequired: true)) {
          return misTypedArgsRoute<LinkingAccountSignInArguments>(args);
        }
        final typedArgs = args as LinkingAccountSignInArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => LinkingAccountSignIn(
              key: typedArgs.key,
              signInMethods: typedArgs.signInMethods,
              accountType: typedArgs.accountType),
          settings: settings,
        );
      case Routes.linkingAccountJoinAccount:
        if (hasInvalidArgs<LinkingAccountJoinAccountArguments>(args,
            isRequired: true)) {
          return misTypedArgsRoute<LinkingAccountJoinAccountArguments>(args);
        }
        final typedArgs = args as LinkingAccountJoinAccountArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => LinkingAccountJoinAccount(
              key: typedArgs.key, accountType: typedArgs.accountType),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//SignInPage arguments holder class
class SignInPageArguments {
  final Key key;
  SignInPageArguments({this.key});
}

//RegisterPage arguments holder class
class RegisterPageArguments {
  final Key key;
  RegisterPageArguments({this.key});
}

//LinkingAccountSignIn arguments holder class
class LinkingAccountSignInArguments {
  final Key key;
  final List<String> signInMethods;
  final AccountType accountType;
  LinkingAccountSignInArguments(
      {this.key, @required this.signInMethods, @required this.accountType});
}

//LinkingAccountJoinAccount arguments holder class
class LinkingAccountJoinAccountArguments {
  final Key key;
  final AccountType accountType;
  LinkingAccountJoinAccountArguments({this.key, @required this.accountType});
}
