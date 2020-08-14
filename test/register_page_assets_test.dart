import 'dart:io';

import 'package:splited/presentation/resources/resources.dart';
import 'package:test/test.dart';

void main() {
  test('register_page_assets assets test', () {
    expect(true, File(RegisterPageAssets.peoplePhoto).existsSync());
  });
}
