import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_keynote/slides/title_slide/keynote_title_slide.dart';
import 'package:fluttershow_keynote/slides/title_slide/keynote_title_slide_variants.dart';

void main() {
  const titleText = 'Title';
  const subTitleText = 'Subtitle';
  const footerText = 'Footer';
  const Gradient titleGradient = LinearGradient(
    colors: [Colors.red, Colors.blue],
  );

  group('Property based tests', () {
    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteTitleSlide(
              titleText: titleText,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteTitleSlide);
      final textFinder = find.text(titleText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      final keynoteTitleSlideWidget =
          tester.widget<KeynoteTitleSlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, isNull);
      expect(keynoteTitleSlideWidget.footerText, isNull);
    });

    testWidgets('test render with subtitle and footer text', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteTitleSlideVariants.variantTwo(
              titleText: titleText,
              subTitleText: subTitleText,
              footerText: footerText,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteTitleSlide);
      final textFinder = find.text(titleText);
      final subTitleTextFinder = find.text(subTitleText);
      final footerTextFinder = find.text(footerText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      expect(subTitleTextFinder, findsOneWidget);
      expect(footerTextFinder, findsOneWidget);
      final keynoteTitleSlideWidget =
          tester.widget<KeynoteTitleSlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
      expect(keynoteTitleSlideWidget.footerText, footerText);
    });

    testWidgets('test render with gradient', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteTitleSlideVariants.variantOne(
              titleText: titleText,
              subTitleText: subTitleText,
              footerText: footerText,
              gradient: titleGradient,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteTitleSlide);
      final textFinder = find.text(titleText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);

      final gradientTextFinder = find.byType(GradientText);
      final gradientTextWidget =
          tester.widget<GradientText>(gradientTextFinder);
      expect(gradientTextWidget.gradient, titleGradient);

      final keynoteTitleSlideWidget =
          tester.widget<KeynoteTitleSlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.titleGradient, titleGradient);
    });

    testWidgets('test render with replacements', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteTitleSlide(
              titleText: titleText,
              titleWidgetReplacement: Container(
                key: const Key('Title'),
              ),
              subtitleWidgetReplacement: Container(
                key: const Key('Subtitle'),
              ),
              footerWidgetReplacement: Container(
                key: const Key('Footer'),
              ),
            ),
          ),
        ),
      );

      final titleReplacementFinder = find.byKey(const Key('Title'));
      final subtitleReplacementFinder = find.byKey(const Key('Subtitle'));
      final footerReplacementFinder = find.byKey(const Key('Footer'));
      expect(titleReplacementFinder, findsOneWidget);
      expect(subtitleReplacementFinder, findsOneWidget);
      expect(footerReplacementFinder, findsOneWidget);
    });
  });

  group('Animation based tests', () {
    testWidgets('test render each widget depending on animationIndex',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteTitleSlide(
              titleText: titleText,
              subTitleText: subTitleText,
              footerText: footerText,
              animationIndex: 0,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteTitleSlide);
      final titleTextFinder = find.text(titleText);
      final subtitleTextFinder = find.text(subTitleText);
      final footerTextFinder = find.text(footerText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subtitleTextFinder, findsNothing);
      expect(footerTextFinder, findsNothing);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteTitleSlide(
              titleText: titleText,
              subTitleText: subTitleText,
              footerText: footerText,
              animationIndex: 1,
            ),
          ),
        ),
      );

      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subtitleTextFinder, findsOneWidget);
      expect(footerTextFinder, findsNothing);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteTitleSlide(
              titleText: titleText,
              subTitleText: subTitleText,
              footerText: footerText,
              animationIndex: 2,
            ),
          ),
        ),
      );

      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subtitleTextFinder, findsOneWidget);
      expect(footerTextFinder, findsOneWidget);
    });
  });
}
