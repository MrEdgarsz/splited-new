import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_color/native_color.dart';
import 'package:splited/application/themes/theme_bloc.dart';
import 'package:splited/presentation/core/Localization/app_localizations.dart';
import 'package:splited/presentation/core/Routes/router.gr.dart';
import 'package:splited/presentation/splashScreen/splash_screen_assets.dart';
import 'package:splited/presentation/themes/theme_type.dart';

import '../../injection.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const String firstAnimationName = "launch";
  static const String idleAnimationName = "idle_background";
  static const String exitAnimationName = "exit";
  String _animationToPlay = firstAnimationName;
  bool _logoCentred = true;
  bool _shouldRepaint = true;
  bool _initializing = true;
  bool _showLoading = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        _showLoading = false;
        _logoCentred = true;
        _animationToPlay = exitAnimationName;
        Future.delayed(const Duration(seconds: 1), () {
          _changePage();
        });
      });
    });
  }

  void _changePage() {
    ExtendedNavigator.of(context).pushReplacementNamed(Routes.homePage);
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_shouldRepaint) {
        Future.delayed(const Duration(seconds: 1), () {
          setState(() {
            _initializing = false;
          });
        });
        Future.delayed(const Duration(milliseconds: 1300), () {
          setState(() {
            _logoCentred = false;
            _shouldRepaint = false;
          });
        });
      }
    });
    return Scaffold(
      backgroundColor: (_initializing)
          ? HexColor("#247DBA")
          : Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          FlareActor(
            (getIt.get<ThemeBloc>().state.data.brightness == Brightness.light)
                ? SplashScreenAssets.splashScreenAnimation
                : SplashScreenAssets.splashScreenAnimationDark,
            fit: BoxFit.cover,
            animation: _animationToPlay,
            isPaused: !mounted,
            callback: (name) {
              if (name == firstAnimationName) {
                setState(() {
                  _showLoading = true;
                  _animationToPlay = idleAnimationName;
                });
              }
            },
          ),
          Align(
            alignment: Alignment.center,
            child: (!_initializing && _showLoading)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).translate("loading"),
                        style: Theme.of(context).textTheme.display2,
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        width: 44,
                        height: 44,
                        margin: const EdgeInsets.only(bottom: 30),
                        child: const CircularProgressIndicator(),
                      )
                    ],
                  )
                : const SizedBox(),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 400),
            top: (_logoCentred)
                ? (MediaQuery.of(context).size.height / 2 - 106)
                : 120,
            child: Column(
              children: <Widget>[
                Image.asset(
                  SplashScreenAssets.logo,
                  width: 186,
                  height: 183,
                ),
                Text(
                  "SplitEd",
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#EBEBEB"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
