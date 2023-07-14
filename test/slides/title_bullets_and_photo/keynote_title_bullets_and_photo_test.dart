import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_keynote/slides/title_bullets_and_photo/keynote_title_bullets_and_photo_slide.dart';
import 'package:fluttershow_keynote/slides/title_bullets_and_photo/keynote_title_bullets_and_photo_slide_variants.dart';

void main() {
  const titleText = 'Title';
  const subTitleText = 'Subtitle';
  const bulletPoints = ['Bullet 1', 'Bullet 2', 'Bullet 3'];

  group('Property based tests', () {
    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteTitleBulletAndPhotoSlide(
              titleText: titleText,
              subTitleText: subTitleText,
              image: Placeholder(),
              bulletPoints: bulletPoints,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder =
          find.byType(KeynoteTitleBulletAndPhotoSlide);
      final imageFinder = find.byType(Placeholder);
      final titleFinder = find.text(titleText);
      final subtitleFinder = find.text(subTitleText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(titleFinder, findsOneWidget);
      expect(subtitleFinder, findsOneWidget);

      final keynoteTitleSlideWidget = tester
          .widget<KeynoteTitleBulletAndPhotoSlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
      expect(keynoteTitleSlideWidget.bulletPoints, bulletPoints);
      expect(imageFinder, findsOneWidget);

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
            body: KeynoteTitleBulletAndPhotoSlide(
              titleText: titleText,
              subTitleText: subTitleText,
              image: Placeholder(),
              bulletPoints: bulletPoints,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder =
          find.byType(KeynoteTitleBulletAndPhotoSlide);
      final imageFinder = find.byType(Placeholder);
      final titleFinder = find.text(titleText);
      final subtitleFinder = find.text(subTitleText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(titleFinder, findsOneWidget);
      expect(subtitleFinder, findsOneWidget);

      final keynoteTitleSlideWidget = tester
          .widget<KeynoteTitleBulletAndPhotoSlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
      expect(keynoteTitleSlideWidget.bulletPoints, bulletPoints);
      expect(imageFinder, findsOneWidget);

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
            body: KeynoteTitleBulletAndPhotoSlideVariants.variantOne(
              titleText: titleText,
              subTitleText: subTitleText,
              image: const Placeholder(),
              bulletPoints: bulletPoints,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder =
          find.byType(KeynoteTitleBulletAndPhotoSlide);
      final imageFinder = find.byType(Placeholder);
      final titleFinder = find.text(titleText);
      final subtitleFinder = find.text(subTitleText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(titleFinder, findsOneWidget);
      expect(subtitleFinder, findsOneWidget);

      final keynoteTitleSlideWidget = tester
          .widget<KeynoteTitleBulletAndPhotoSlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
      expect(keynoteTitleSlideWidget.bulletPoints, bulletPoints);
      expect(imageFinder, findsOneWidget);

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
            body: KeynoteTitleBulletAndPhotoSlideVariants.variantOne(
              titleText: titleText,
              subTitleText: subTitleText,
              image: const Placeholder(),
              bulletPoints: bulletPoints,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder =
          find.byType(KeynoteTitleBulletAndPhotoSlide);
      final imageFinder = find.byType(Placeholder);
      final titleFinder = find.text(titleText);
      final subtitleFinder = find.text(subTitleText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(titleFinder, findsOneWidget);
      expect(subtitleFinder, findsOneWidget);

      final keynoteTitleSlideWidget = tester
          .widget<KeynoteTitleBulletAndPhotoSlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
      expect(keynoteTitleSlideWidget.bulletPoints, bulletPoints);
      expect(imageFinder, findsOneWidget);

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
            body: KeynoteTitleBulletAndPhotoSlide(
              titleText: titleText,
              subTitleText: subTitleText,
              image: const Placeholder(),
              bulletPoints: bulletPoints,
              titleWidgetReplacement: Container(key: const Key('Title')),
              subtitleWidgetReplacement: Container(key: const Key('Subtitle')),
              imageWidgetReplacement: Container(key: const Key('Image')),
              bulletPointsWidgetReplacement:
                  Container(key: const Key('BulletPoints')),
            ),
          ),
        ),
      );

      final imageFinder = find.byKey(const Key('Image'));
      final titleFinder = find.byKey(const Key('Title'));
      final subtitleFinder = find.byKey(const Key('Subtitle'));
      final bulletPointsFinder = find.byKey(const Key('BulletPoints'));
      expect(imageFinder, findsOneWidget);
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
                body: KeynoteTitleBulletAndPhotoSlideVariants.variantTwo(
                  titleText: titleText,
                  subTitleText: subTitleText,
                  image: const Placeholder(),
                  bulletPoints: bulletPoints,
                  animationIndex: animationIndex,
                ),
              ),
            ),
          );

      await repumpWithAnimationIndex(0);

      final keynoteTitleSlideFinder =
          find.byType(KeynoteTitleBulletAndPhotoSlide);
      final titleTextFinder = find.text(titleText);
      final subtitleTextFinder = find.text(subTitleText);
      final imageFinder = find.byType(Placeholder);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subtitleTextFinder, findsNothing);
      expect(imageFinder, findsNothing);

      await repumpWithAnimationIndex(1);

      expect(titleTextFinder, findsOneWidget);
      expect(subtitleTextFinder, findsOneWidget);
      expect(imageFinder, findsNothing);

      await repumpWithAnimationIndex(2);

      expect(titleTextFinder, findsOneWidget);
      expect(subtitleTextFinder, findsOneWidget);
      expect(imageFinder, findsOneWidget);

      await repumpWithAnimationIndex(3);

      expect(titleTextFinder, findsOneWidget);
      expect(subtitleTextFinder, findsOneWidget);
      expect(imageFinder, findsOneWidget);

      final bulletPointOneFinder =
          find.byKey(const Key('DefaultAnimatedListTextItem-${0}'));
      expect(bulletPointOneFinder, findsOneWidget);

      await repumpWithAnimationIndex(4);

      expect(titleTextFinder, findsOneWidget);
      expect(subtitleTextFinder, findsOneWidget);
      expect(imageFinder, findsOneWidget);
      expect(bulletPointOneFinder, findsOneWidget);

      final bulletPointTwoFinder =
          find.byKey(const Key('DefaultAnimatedListTextItem-${1}'));
      expect(bulletPointTwoFinder, findsOneWidget);

      await repumpWithAnimationIndex(5);

      expect(titleTextFinder, findsOneWidget);
      expect(subtitleTextFinder, findsOneWidget);
      expect(imageFinder, findsOneWidget);
      expect(bulletPointOneFinder, findsOneWidget);

      final bulletPointThreeFinder =
          find.byKey(const Key('DefaultAnimatedListTextItem-${2}'));
      expect(bulletPointThreeFinder, findsOneWidget);
    });
  });
}
