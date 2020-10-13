part of 'splashscreenac_bloc.dart';

@freezed
abstract class SplashScreenACEvent with _$SplashScreenACEvent {
  const factory SplashScreenACEvent.starting() = Starting;
  const factory SplashScreenACEvent.loading() = Loading;
  const factory SplashScreenACEvent.exiting() = Exiting;
}
