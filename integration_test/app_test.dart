import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:random_color_generation_app/main.dart' as app;
import 'package:random_color_generation_app/src/update_colors.dart';

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
          updateColors(),
        );
        await tester.tap(find.byKey(const Key('Heythere')));
      }
    });
    testWidgets('Tap on random position on the screen, color comparison',
        (tester) async {
      app.main();
      const int _randmItr = 500;

      final _random = Random();
      final int itr = _random.nextInt(_randmItr + 50);
      await tester.pumpAndSettle(const Duration(seconds: 1));
      final Finder contTop = find.byKey(const Key('Heythere'));

      Offset fg = tester.getTopLeft(contTop);
      Offset fgg = tester.getBottomRight(contTop);
      print(fg);
      print(fgg);
      double _randmTapX = fgg.dx;
      double _randmTapY = fgg.dy;

      for (int i = 1; i < itr; i++) {
        final double tapX = _random.nextDouble() * _randmTapX;
        final double tapY = _random.nextDouble() * _randmTapY;
      

        await tester.pumpAndSettle();
        Color? colNew = (tester.firstWidget(contTop) as Container).color;
        expect(colNew, updateColors());
        //await tester.tap(find.byKey(const Key('Heythere')));
        await tester.tapAt(Offset(tapX, tapY));
        print('-------------------------------------');
        print('Iteration #$i/$itr');
        print('Tap on position: X:$tapX Y:$tapY');
      }
    });
  });
}
