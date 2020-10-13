import 'dart:io';

import 'package:splited/presentation/resources/resources.dart';
import 'package:test/test.dart';

void main() {
  test('forgot_password_assets assets test', () {
    expect(true, File(ForgotPasswordAssets.activationCode).existsSync());
    expect(true, File(ForgotPasswordAssets.forgotPassword).existsSync());
    expect(true, File(ForgotPasswordAssets.newPassword).existsSync());
    expect(
        true, File(ForgotPasswordAssets.passwordCouldntBeReseted).existsSync());
  });
}
