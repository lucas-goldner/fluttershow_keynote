import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';
import 'package:fluttershow_keynote/slides/title_and_photo/keynote_title_and_photo_slide.dart';
import 'package:fluttershow_keynote/slides/title_and_photo/keynote_title_and_photo_slide_variants.dart';

void main() {
  const titleText = 'Title';
  const subTitleText = 'Subtitle';
  const headingText = 'Heading';
  const gradient = LinearGradient(colors: [Colors.red, Colors.blue]);

  group('Property based tests', () {
    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteTitleAndPhotoSlideVariants.variantOne(
              titleText: titleText,
              subTitleText: subTitleText,
              headingText: headingText,
              image: const Placeholder(),
              gradient: gradient,
            ),
          ),
        ),
      );

      final keynoteTitleAndPhotoSlideFinder =
          find.byType(KeynoteTitleAndPhotoSlide);
      final textFinder = find.text(titleText);
      final subTitleTextFinder = find.text(subTitleText);
      final headingTextFinder = find.text(headingText);
      final imageFinder = find.byType(Placeholder);
      expect(keynoteTitleAndPhotoSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      expect(subTitleTextFinder, findsOneWidget);
      expect(headingTextFinder, findsOneWidget);
      expect(imageFinder, findsOneWidget);

      final keynoteTitleSlideWidget = tester
          .widget<KeynoteTitleAndPhotoSlide>(keynoteTitleAndPhotoSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
      expect(keynoteTitleSlideWidget.headingText, headingText);
    });

    testWidgets('test render with default properties variant two with gradient',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteTitleAndPhotoSlide(
              titleText: titleText,
              subTitleText: subTitleText,
              headingText: headingText,
              image: Placeholder(),
              titleGradient: gradient,
              variant: Variants.variantTwo,
            ),
          ),
        ),
      );

      final keynoteTitleAndPhotoSlideFinder =
          find.byType(KeynoteTitleAndPhotoSlide);
      final textFinder = find.text(titleText);
      final subTitleTextFinder = find.text(subTitleText);
      final headingTextFinder = find.text(headingText);
      final imageFinder = find.byType(Placeholder);
      expect(keynoteTitleAndPhotoSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      expect(subTitleTextFinder, findsOneWidget);
      expect(headingTextFinder, findsOneWidget);
      expect(imageFinder, findsOneWidget);

      final keynoteTitleSlideWidget = tester
          .widget<KeynoteTitleAndPhotoSlide>(keynoteTitleAndPhotoSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
      expect(keynoteTitleSlideWidget.headingText, headingText);
    });

    testWidgets('test render with replacement widgets', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteTitleAndPhotoSlide(
              titleText: titleText,
              subTitleText: subTitleText,
              headingText: headingText,
              image: const Placeholder(),
              titleWidgetReplacement: Container(
                key: const Key('Title'),
              ),
              subtitleWidgetReplacement: Container(
                key: const Key('Subtitle'),
              ),
              imageWidgetReplacement: Container(
                key: const Key('Image'),
              ),
              headingWidgetReplacement: Container(
                key: const Key('Heading'),
              ),
            ),
          ),
        ),
      );

      final keynoteTitleAndPhotoSlideFinder =
          find.byType(KeynoteTitleAndPhotoSlide);
      final textFinder = find.text(titleText);
      final subTitleTextFinder = find.text(subTitleText);
      final headingTextFinder = find.text(headingText);
      final imageFinder = find.byType(Placeholder);
      expect(keynoteTitleAndPhotoSlideFinder, findsOneWidget);
      expect(textFinder, findsNothing);
      expect(subTitleTextFinder, findsNothing);
      expect(headingTextFinder, findsNothing);
      expect(imageFinder, findsNothing);

      final textReplacementFinder = find.byKey(const Key('Title'));
      final subtitleReplacementFinder = find.byKey(const Key('Subtitle'));
      final headingReplacementFinder = find.byKey(const Key('Image'));
      final imageReplacementFinder = find.byKey(const Key('Heading'));
      expect(textReplacementFinder, findsOneWidget);
      expect(subtitleReplacementFinder, findsOneWidget);
      expect(headingReplacementFinder, findsOneWidget);
      expect(imageReplacementFinder, findsOneWidget);
    });
  });

  group('Animation based tests', () {
    testWidgets(
        'test render each widget depending on animationIndex variant one',
        (tester) async {
      Widget repumpWithAnimationIndex(int animationIndex) => MaterialApp(
            home: Scaffold(
              body: KeynoteTitleAndPhotoSlide(
                titleText: titleText,
                subTitleText: subTitleText,
                image: const Placeholder(),
                headingText: headingText,
                variant: Variants.variantOne,
                animationIndex: animationIndex,
              ),
            ),
          );

      await tester.pumpWidget(repumpWithAnimationIndex(0));

      final keynoteTitleAndPhotoSlideFinder =
          find.byType(KeynoteTitleAndPhotoSlide);
      final titleTextFinder = find.text(titleText);
      final subTitleTextFinder = find.text(subTitleText);
      final headingTextFinder = find.text(headingText);
      final imageFinder = find.byType(Placeholder);
      expect(keynoteTitleAndPhotoSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subTitleTextFinder, findsNothing);
      expect(imageFinder, findsOneWidget);
      expect(headingTextFinder, findsNothing);

      await tester.pumpWidget(repumpWithAnimationIndex(1));

      expect(keynoteTitleAndPhotoSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subTitleTextFinder, findsOneWidget);
      expect(imageFinder, findsOneWidget);
      expect(headingTextFinder, findsNothing);

      await tester.pumpWidget(repumpWithAnimationIndex(2));

      expect(keynoteTitleAndPhotoSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subTitleTextFinder, findsOneWidget);
      expect(imageFinder, findsOneWidget);
      expect(headingTextFinder, findsOneWidget);
    });

    testWidgets(
        'test render each widget depending on animationIndex variant two',
        (tester) async {
      Widget repumpWithAnimationIndex(int animationIndex) => MaterialApp(
            home: Scaffold(
              body: KeynoteTitleAndPhotoSlideVariants.variantTwo(
                titleText: titleText,
                subTitleText: subTitleText,
                image: const Placeholder(),
                headingText: headingText,
                animationIndex: animationIndex,
              ),
            ),
          );

      await tester.pumpWidget(repumpWithAnimationIndex(0));

      final keynoteTitleAndPhotoSlideFinder =
          find.byType(KeynoteTitleAndPhotoSlide);
      final titleTextFinder = find.text(titleText);
      final subTitleTextFinder = find.text(subTitleText);
      final headingTextFinder = find.text(headingText);
      final imageFinder = find.byType(Placeholder);
      expect(keynoteTitleAndPhotoSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsNothing);
      expect(subTitleTextFinder, findsNothing);
      expect(imageFinder, findsOneWidget);
      expect(headingTextFinder, findsOneWidget);

      await tester.pumpWidget(repumpWithAnimationIndex(1));

      expect(keynoteTitleAndPhotoSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subTitleTextFinder, findsNothing);
      expect(imageFinder, findsOneWidget);
      expect(headingTextFinder, findsOneWidget);

      await tester.pumpWidget(repumpWithAnimationIndex(2));

      expect(keynoteTitleAndPhotoSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subTitleTextFinder, findsOneWidget);
      expect(imageFinder, findsOneWidget);
      expect(headingTextFinder, findsOneWidget);
    });
  });
}
