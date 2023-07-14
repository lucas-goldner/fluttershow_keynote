import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_keynote/slides/bullets/keynote_bullets_slide.dart';

void main() {
  const bulletPoints = ['Bullet 1', 'Bullet 2', 'Bullet 3'];

  group('Property based tests', () {
    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteBulletsSlide(
              bulletPoints: bulletPoints,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteBulletsSlide);
      expect(keynoteTitleSlideFinder, findsOneWidget);

      for (final bulletPoint in bulletPoints) {
        final textFinder = find
            .byKey(Key('ListTextItem-${bulletPoints.indexOf(bulletPoint)}'));
        expect(textFinder, findsOneWidget);
      }
    });

    testWidgets('test render with replacement widgets', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteBulletsSlide(
              bulletPoints: bulletPoints,
              bulletPointsWidgetReplacement:
                  Container(key: const Key('BulletPoints')),
            ),
          ),
        ),
      );

      for (final bulletPoint in bulletPoints) {
        final textFinder = find
            .byKey(Key('ListTextItem-${bulletPoints.indexOf(bulletPoint)}'));
        expect(textFinder, findsNothing);
      }

      final bulletPointsFinder = find.byKey(const Key('BulletPoints'));
      expect(bulletPointsFinder, findsOneWidget);
    });
  });

  group('Animation based tests', () {
    testWidgets('test render each widget depending on animationIndex',
        (tester) async {
      Future<void> repumpWithAnimationIndex(int animationIndex) async =>
          tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: KeynoteBulletsSlide(
                  bulletPoints: bulletPoints,
                  animationIndex: animationIndex,
                ),
              ),
            ),
          );

      await repumpWithAnimationIndex(0);

      final keynoteTitleSlideFinder = find.byType(KeynoteBulletsSlide);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      final bulletPointOneFinder =
          find.byKey(const Key('DefaultAnimatedListTextItem-${0}'));
      expect(bulletPointOneFinder, findsOneWidget);

      await repumpWithAnimationIndex(1);

      expect(bulletPointOneFinder, findsOneWidget);
      final bulletPointTwoFinder =
          find.byKey(const Key('DefaultAnimatedListTextItem-${1}'));
      expect(bulletPointOneFinder, findsOneWidget);
      expect(bulletPointTwoFinder, findsOneWidget);

      await repumpWithAnimationIndex(2);

      expect(bulletPointOneFinder, findsOneWidget);
      final bulletPointThreeFinder =
          find.byKey(const Key('DefaultAnimatedListTextItem-${2}'));
      expect(bulletPointOneFinder, findsOneWidget);
      expect(bulletPointTwoFinder, findsOneWidget);
      expect(bulletPointThreeFinder, findsOneWidget);
    });
  });
}
