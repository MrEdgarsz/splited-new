import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:splited/presentation/splashScreen/splash_screen_animations.dart';

part 'splashscreenac_event.dart';
part 'splashscreenac_state.dart';
part 'splashscreenac_bloc.freezed.dart';

@LazySingleton()
class SplashScreenACBloc
    extends Bloc<SplashScreenACEvent, SplashScreenACState> {
  SplashScreenACBloc() : super(SplashScreenACState.initial());
  @override
  Stream<SplashScreenACState> mapEventToState(
    SplashScreenACEvent event,
  ) async* {
    yield* event.map(
      starting: (event) async* {
        yield state.copyWith(
          animationToPlay: SplashScreenAnimation.launch,
          initializing: false,
        );
        yield await Future.delayed(const Duration(milliseconds: 300), () async {
          return state.copyWith(centerLogo: false);
        });
      },
      loading: (event) async* {
        yield state.copyWith(
          animationToPlay: SplashScreenAnimation.idle,
          loading: true,
        );
      },
      exiting: (event) async* {
        yield state.copyWith(
          animationToPlay: SplashScreenAnimation.exit,
          centerLogo: true,
          loading: false,
        );
        yield await Future.delayed(const Duration(seconds: 1), () async {
          return state.copyWith(redirect: true);
        });
      },
    );
  }
}
