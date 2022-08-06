import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:random_color_generation_app/main.dart' as app;
import 'package:random_color_generation_app/src/constans.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('test', () {
    testWidgets('Tap on the screen, color comparison', (tester) async {
      app.main();
      const int _randmItr = 101;
      final _random = Random();
      final int itr = _random.nextInt(_randmItr);
      await tester.pumpAndSettle(const Duration(seconds: 1));

      for (int i = 1; i < itr; i++) {
        await tester.pumpAndSettle();
        expect(
          (tester.firstWidget(find.byKey(const Key('Heythere'))) as Container)
              .color,
          kBackgroundColor,
        );
        await tester.tap(find.byKey(const Key('Heythere')));
      }
    });
  });
}
