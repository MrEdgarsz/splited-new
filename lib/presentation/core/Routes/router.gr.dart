// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../auth/register/register_page.dart';
import '../../auth/signIn/sign_in_page.dart';
import '../../homePage/home_page.dart';
import '../../splashScreen/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String homePage = '/home-page';
  static const String signInPage = '/sign-in-page';
  static const String registerPage = '/register-page';
  static const all = <String>{
    splashScreen,
    homePage,
    signInPage,
    registerPage,
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
  };
}
