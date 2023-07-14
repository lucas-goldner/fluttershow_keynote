import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_keynote/slides/title_and_bullets/keynote_title_and_bullets_slide.dart';
import 'package:fluttershow_keynote/slides/title_and_bullets/keynote_title_and_bullets_slide_variants.dart';

void main() {
  const titleText = 'Title';
  const subTitleText = 'Subtitle';
  const bulletPoints = ['Bullet 1', 'Bullet 2', 'Bullet 3'];

  group('Property based tests', () {
    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteTitleAndBulletsSlide(
              titleText: titleText,
              subTitleText: subTitleText,
              bulletPoints: bulletPoints,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteTitleAndBulletsSlide);
      final titleFinder = find.text(titleText);
      final subtitleFinder = find.text(subTitleText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(titleFinder, findsOneWidget);
      expect(subtitleFinder, findsOneWidget);

      final keynoteTitleSlideWidget =
          tester.widget<KeynoteTitleAndBulletsSlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
      expect(keynoteTitleSlideWidget.bulletPoints, bulletPoints);

      for (final bulletPoint in bulletPoints) {
        final textFinder = find
            .byKey(Key('ListTextItem-${bulletPoints.indexOf(bulletPoint)}'));
        expect(textFinder, findsOneWidget);
      }
    });

    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteTitleAndBulletsSlide(
              titleText: titleText,
              subTitleText: subTitleText,
              bulletPoints: bulletPoints,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteTitleAndBulletsSlide);
      final titleFinder = find.text(titleText);
      final subtitleFinder = find.text(subTitleText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(titleFinder, findsOneWidget);
      expect(subtitleFinder, findsOneWidget);

      final keynoteTitleSlideWidget =
          tester.widget<KeynoteTitleAndBulletsSlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
      expect(keynoteTitleSlideWidget.bulletPoints, bulletPoints);

      for (final bulletPoint in bulletPoints) {
        final textFinder = find
            .byKey(Key('ListTextItem-${bulletPoints.indexOf(bulletPoint)}'));
        expect(textFinder, findsOneWidget);
      }
    });

    testWidgets('test render with variant one', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteTitleAndBulletsSlideVariants.variantOne(
              titleText: titleText,
              subTitleText: subTitleText,
              bulletPoints: bulletPoints,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteTitleAndBulletsSlide);
      final titleFinder = find.text(titleText);
      final subtitleFinder = find.text(subTitleText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(titleFinder, findsOneWidget);
      expect(subtitleFinder, findsOneWidget);

      final keynoteTitleSlideWidget =
          tester.widget<KeynoteTitleAndBulletsSlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
      expect(keynoteTitleSlideWidget.bulletPoints, bulletPoints);

      for (final bulletPoint in bulletPoints) {
        final textFinder = find
            .byKey(Key('ListTextItem-${bulletPoints.indexOf(bulletPoint)}'));
        expect(textFinder, findsOneWidget);
      }
    });

    testWidgets('test render with variant two', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteTitleAndBulletsSlideVariants.variantOne(
              titleText: titleText,
              subTitleText: subTitleText,
              bulletPoints: bulletPoints,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteTitleAndBulletsSlide);
      final titleFinder = find.text(titleText);
      final subtitleFinder = find.text(subTitleText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(titleFinder, findsOneWidget);
      expect(subtitleFinder, findsOneWidget);

      final keynoteTitleSlideWidget =
          tester.widget<KeynoteTitleAndBulletsSlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
      expect(keynoteTitleSlideWidget.bulletPoints, bulletPoints);

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
            body: KeynoteTitleAndBulletsSlide(
              titleText: titleText,
              subTitleText: subTitleText,
              bulletPoints: bulletPoints,
              titleWidgetReplacement: Container(key: const Key('Title')),
              subtitleWidgetReplacement: Container(key: const Key('Subtitle')),
              bulletPointsWidgetReplacement:
                  Container(key: const Key('BulletPoints')),
            ),
          ),
        ),
      );

      final titleFinder = find.byKey(const Key('Title'));
      final subtitleFinder = find.byKey(const Key('Subtitle'));
      final bulletPointsFinder = find.byKey(const Key('BulletPoints'));
      expect(titleFinder, findsOneWidget);
      expect(subtitleFinder, findsOneWidget);
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
                body: KeynoteTitleAndBulletsSlideVariants.variantTwo(
                  titleText: titleText,
                  subTitleText: subTitleText,
                  bulletPoints: bulletPoints,
                  animationIndex: animationIndex,
                ),
              ),
            ),
          );

      await repumpWithAnimationIndex(0);

      final keynoteTitleSlideFinder = find.byType(KeynoteTitleAndBulletsSlide);
      final titleTextFinder = find.text(titleText);
      final subtitleTextFinder = find.text(subTitleText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subtitleTextFinder, findsNothing);

      await repumpWithAnimationIndex(1);

      expect(titleTextFinder, findsOneWidget);
      expect(subtitleTextFinder, findsOneWidget);

      await repumpWithAnimationIndex(2);

      final bulletPointOneFinder =
          find.byKey(const Key('DefaultAnimatedListTextItem-${0}'));
      expect(bulletPointOneFinder, findsOneWidget);

      await repumpWithAnimationIndex(3);

      expect(titleTextFinder, findsOneWidget);
      expect(subtitleTextFinder, findsOneWidget);
      expect(bulletPointOneFinder, findsOneWidget);

      final bulletPointTwoFinder =
          find.byKey(const Key('DefaultAnimatedListTextItem-${1}'));
      expect(bulletPointTwoFinder, findsOneWidget);

      await repumpWithAnimationIndex(4);

      expect(titleTextFinder, findsOneWidget);
      expect(subtitleTextFinder, findsOneWidget);
      expect(bulletPointOneFinder, findsOneWidget);

      final bulletPointThreeFinder =
          find.byKey(const Key('DefaultAnimatedListTextItem-${2}'));
      expect(bulletPointThreeFinder, findsOneWidget);
    });
  });
}
