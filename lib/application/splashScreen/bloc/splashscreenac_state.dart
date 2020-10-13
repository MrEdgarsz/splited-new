part of 'splashscreenac_bloc.dart';

@freezed
abstract class SplashScreenACState with _$SplashScreenACState {
  const factory SplashScreenACState({
    @required String animationToPlay,
    @required bool loading,
    @required bool redirect,
    @required bool centerLogo,
    @required bool initializing,
  }) = _SplashScreenACState;

  factory SplashScreenACState.initial() => const SplashScreenACState(
        animationToPlay: "",
        loading: false,
        centerLogo: true,
        initializing: true,
        redirect: false,
      );
}
