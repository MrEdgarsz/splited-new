import 'dart:io';

import 'package:splited/presentation/resources/resources.dart';
import 'package:test/test.dart';

void main() {
  test('splash_screen_assets assets test', () {
    expect(true, File(SplashScreenAssets.background).existsSync());
    expect(true, File(SplashScreenAssets.logo).existsSync());
    expect(true, File(SplashScreenAssets.splashScreenAnimation).existsSync());
    expect(
        true, File(SplashScreenAssets.splashScreenAnimationDark).existsSync());
  });
}
