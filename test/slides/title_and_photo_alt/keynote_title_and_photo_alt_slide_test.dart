import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_keynote/slides/title_and_photo_alt/keynote_title_and_photo_alt_slide.dart';
import 'package:fluttershow_keynote/slides/title_and_photo_alt/keynote_title_and_photo_alt_slide_variants.dart';

void main() {
  const titleText = 'Title';
  const subTitleText = 'Subtitle';

  group('Property based tests', () {
    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteTitleAndPhotoAltSlide(
              titleText: titleText,
              subTitleText: subTitleText,
              image: Placeholder(),
            ),
          ),
        ),
      );

      final keynoteTitleAndPhotoAltSlideFinder =
          find.byType(KeynoteTitleAndPhotoAltSlide);
      final textFinder = find.text(titleText);
      final subTitleTextFinder = find.text(subTitleText);
      final imageFinder = find.byType(Placeholder);
      expect(keynoteTitleAndPhotoAltSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      expect(subTitleTextFinder, findsOneWidget);
      expect(imageFinder, findsOneWidget);

      final keynoteTitleSlideWidget =
          tester.widget<KeynoteTitleAndPhotoAltSlide>(
        keynoteTitleAndPhotoAltSlideFinder,
      );
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
    });

    testWidgets('test render with for variant one default properties',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteTitleAndPhotoAltSlideVariants.variantOne(
              titleText: titleText,
              subTitleText: subTitleText,
              image: const Placeholder(),
            ),
          ),
        ),
      );

      final keynoteTitleAndPhotoAltSlideFinder =
          find.byType(KeynoteTitleAndPhotoAltSlide);
      final textFinder = find.text(titleText);
      final subTitleTextFinder = find.text(subTitleText);
      final imageFinder = find.byType(Placeholder);
      expect(keynoteTitleAndPhotoAltSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      expect(subTitleTextFinder, findsOneWidget);
      expect(imageFinder, findsOneWidget);

      final keynoteTitleSlideWidget =
          tester.widget<KeynoteTitleAndPhotoAltSlide>(
        keynoteTitleAndPhotoAltSlideFinder,
      );
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
    });

    testWidgets('test render with for variant two default properties',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteTitleAndPhotoAltSlideVariants.variantTwo(
              titleText: titleText,
              subTitleText: subTitleText,
              image: const Placeholder(),
            ),
          ),
        ),
      );

      final keynoteTitleAndPhotoAltSlideFinder =
          find.byType(KeynoteTitleAndPhotoAltSlide);
      final textFinder = find.text(titleText);
      final subTitleTextFinder = find.text(subTitleText);
      final imageFinder = find.byType(Placeholder);
      expect(keynoteTitleAndPhotoAltSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      expect(subTitleTextFinder, findsOneWidget);
      expect(imageFinder, findsOneWidget);

      final keynoteTitleSlideWidget =
          tester.widget<KeynoteTitleAndPhotoAltSlide>(
        keynoteTitleAndPhotoAltSlideFinder,
      );
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
    });

    testWidgets('test render with replacement widgets', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteTitleAndPhotoAltSlide(
              titleText: titleText,
              subTitleText: subTitleText,
              image: const Placeholder(),
              titleWidgetReplacement: Container(key: const Key('Title')),
              subtitleWidgetReplacement: Container(key: const Key('Subtitle')),
              imageWidgetReplacement: Container(key: const Key('Image')),
            ),
          ),
        ),
      );

      final textFinder = find.byKey(const Key('Title'));
      final subTitleTextFinder = find.byKey(const Key('Subtitle'));
      final imageFinder = find.byKey(const Key('Image'));
      expect(textFinder, findsOneWidget);
      expect(subTitleTextFinder, findsOneWidget);
      expect(imageFinder, findsOneWidget);
    });
  });

  group('Animation based tests', () {
    testWidgets('test render each widget depending on animationIndex',
        (tester) async {
      Widget repumpWithAnimationIndex(int animationIndex) => MaterialApp(
            home: Scaffold(
              body: KeynoteTitleAndPhotoAltSlide(
                titleText: titleText,
                subTitleText: subTitleText,
                image: const Placeholder(),
                animationIndex: animationIndex,
              ),
            ),
          );

      await tester.pumpWidget(repumpWithAnimationIndex(0));

      final keynoteTitleAndPhotoAltSlideFinder =
          find.byType(KeynoteTitleAndPhotoAltSlide);
      final titleTextFinder = find.text(titleText);
      final subTitleTextFinder = find.text(subTitleText);
      final imageFinder = find.byType(Placeholder);
      expect(keynoteTitleAndPhotoAltSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subTitleTextFinder, findsNothing);
      expect(imageFinder, findsNothing);

      await tester.pumpWidget(repumpWithAnimationIndex(1));

      expect(keynoteTitleAndPhotoAltSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subTitleTextFinder, findsOneWidget);
      expect(imageFinder, findsNothing);

      await tester.pumpWidget(repumpWithAnimationIndex(2));

      expect(keynoteTitleAndPhotoAltSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subTitleTextFinder, findsOneWidget);
      expect(imageFinder, findsOneWidget);
    });
  });
}
