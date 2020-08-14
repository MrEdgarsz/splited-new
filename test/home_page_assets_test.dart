import 'dart:io';

import 'package:splited/presentation/resources/resources.dart';
import 'package:test/test.dart';

void main() {
  test('home_page_assets assets test', () {
    expect(true, File(HomePageAssets.icon).existsSync());
    expect(true, File(HomePageAssets.people).existsSync());
  });
}
