import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splited/application/splashScreen/bloc/splashscreenac_bloc.dart';
import 'package:splited/application/themes/theme_bloc.dart';
import 'package:splited/presentation/core/Routes/router.gr.dart';
import 'package:splited/presentation/resources/resources.dart';
import 'package:splited/presentation/splashScreen/splash_screen_animations.dart';

import '../../injection.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt.get<SplashScreenACBloc>(),
        child: BlocConsumer<SplashScreenACBloc, SplashScreenACState>(
          listener: (context, state) {
            if (state.redirect) {
              ExtendedNavigator.of(context).replace(Routes.homePage);
            }
          },
          builder: (context, state) {
            print(state.animationToPlay);
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (state.initializing) {
                Future.delayed(const Duration(seconds: 1), () {
                  context.bloc<SplashScreenACBloc>().add(const Starting());
                });
              }
            });
            return Scaffold(
              backgroundColor: (state.initializing)
                  ? const Color(0xff247DBA)
                  : Theme.of(context).scaffoldBackgroundColor,
              body: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  FlareActor(
                    (getIt.get<ThemeBloc>().state.data.brightness ==
                            Brightness.light)
                        ? SplashScreenAssets.splashScreenAnimation
                        : SplashScreenAssets.splashScreenAnimationDark,
                    fit: BoxFit.cover,
                    animation: state.animationToPlay,
                    isPaused: state.initializing,
                    callback: (name) {
                      if (name == SplashScreenAnimation.launch) {
                        context.bloc<SplashScreenACBloc>().add(const Loading());
                        Future.delayed(const Duration(seconds: 3), () {
                          context
                              .bloc<SplashScreenACBloc>()
                              .add(const Exiting());
                        });
                      }
                    },
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: (!state.initializing && state.loading)
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Ładowanie...",
                                style: Theme.of(context).textTheme.headline3,
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
                    top: (state.centerLogo)
                        ? (MediaQuery.of(context).size.height / 2 - 106)
                        : 120,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          SplashScreenAssets.logo,
                          width: 186,
                          height: 183,
                        ),
                        const Text(
                          "SplitEd",
                          style: TextStyle(
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffEBEBEB),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
