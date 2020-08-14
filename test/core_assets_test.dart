import 'dart:io';

import 'package:splited/presentation/resources/resources.dart';
import 'package:test/test.dart';

void main() {
  test('core_assets assets test', () {
    expect(true, File(CoreAssets.backbutton).existsSync());
    expect(true, File(CoreAssets.suffixbutton).existsSync());
  });
}
