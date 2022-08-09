import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_color_generation_app/screen/main_screen.dart';
import 'package:random_color_generation_app/src/update_colors.dart';

void main() {
  testWidgets('Color comparison test', (WidgetTester tester) async {
    await tester.pumpWidget(const MainScreen());
    const int _randmItr = 101;
    final _random = Random();
    final int itr = _random.nextInt(_randmItr);

    for (int i = 1; i < itr; i++) {
      expect(
        (tester.firstWidget(find.byKey(const Key('Heythere'))) as Container)
            .color,
        updateColors(),
      );
      await tester.tap(find.byKey(const Key('Heythere')));
      await tester.pumpWidget(const MainScreen());
      print('Iteration № $i passed!');
    }
  });
}
