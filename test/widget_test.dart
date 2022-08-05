import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_color_generation_app/screen/main_screen.dart';

void main() {
  testWidgets('Testing', (WidgetTester tester) async {
    await tester.pumpWidget(const MainScreen());
    await tester.tap(find.byKey(const Key('Heythere')));
  });
}
