import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splited/presentation/auth/forgotPassword/new_password_set_page.dart';
import 'package:splited/presentation/auth/forgotPassword/send_verification_code_page.dart';
import 'package:splited/presentation/auth/forgotPassword/set_new_password_page.dart';
import 'package:splited/presentation/auth/forgotPassword/verification_code_invalid_page.dart';
import 'package:splited/presentation/auth/forgotPassword/verify_code_page.dart';
import 'package:splited/presentation/auth/register/register_page.dart';
import 'package:splited/presentation/auth/signIn/sign_in_page.dart';
import 'package:splited/presentation/homePage/home_page.dart';
import 'package:splited/presentation/splashScreen/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    CustomRoute(
      page: SplashScreen,
      // initial: true,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 200,
    ),
    CustomRoute(
      page: HomePage,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 200,
    ),
    CustomRoute(
      page: SignInPage,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 200,
    ),
    CustomRoute(
      page: RegisterPage,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 200,
    ),
    CustomRoute(
      page: SendVerificationCodePage,
      // initial: true,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 200,
    ),
    CustomRoute(
      page: VerifyCodePage,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 200,
    ),
    CustomRoute(
      page: SetNewPasswordPage,
      // initial: true,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 200,
    ),
    CustomRoute(
      page: VerificationCodeInvalidPage,
      initial: true,
      transitionsBuilder: splitEdTransition,
      durationInMilliseconds: 200,
    ),
    CustomRoute(
      page: NewPasswordSetPage,
      // initial: true,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 300,
    )
  ],
)
class $Router {}

Widget splitEdTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  // you get an animation object and a widget
  // make your own transition
  return Stack(
    children: [
      SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0.0, 1.0),
          end: Offset.zero,
        ).animate(animation),
        child: ColorFiltered(
          colorFilter: const ColorFilter.mode(Colors.red, BlendMode.overlay),
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
      ),
    ],
  );
}
