import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_keynote/slides/big_fact/keynote_big_fact_slide.dart';
import 'package:fluttershow_keynote/slides/big_fact/keynote_big_fact_slide_variants.dart';
import 'package:fluttershow_keynote/style/keynote_gradients.dart';

void main() {
  const titleText = 'Title';
  const subTitleText = 'Subtitle';
  final gradient = KeynoteGradients.quoteGradient;

  group('Property based tests', () {
    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteBigFactSlide(
              titleText: titleText,
            ),
          ),
        ),
      );

      final keynoteBigFactSlideFinder = find.byType(KeynoteBigFactSlide);
      final textFinder = find.text(titleText);
      expect(keynoteBigFactSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
    });

    testWidgets('test render variant one with default properties',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteBigFactSlideVariants.variantOne(
              titleText: titleText,
              subTitleText: subTitleText,
              gradient: gradient,
            ),
          ),
        ),
      );

      final keynoteBigFactSlideFinder = find.byType(KeynoteBigFactSlide);
      final gradientFinder = find.byType(GradientText);
      final textFinder = find.text(titleText);
      final subTitleTextFinder = find.text(subTitleText);
      expect(keynoteBigFactSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      expect(subTitleTextFinder, findsOneWidget);
      expect(gradientFinder, findsOneWidget);
    });

    testWidgets('test render variant two with default properties',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteBigFactSlideVariants.variantTwo(
              titleText: titleText,
              subTitleText: subTitleText,
            ),
          ),
        ),
      );

      final keynoteBigFactSlideFinder = find.byType(KeynoteBigFactSlide);
      final textFinder = find.text(titleText);
      final subTitleTextFinder = find.text(subTitleText);
      expect(keynoteBigFactSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      expect(subTitleTextFinder, findsOneWidget);
    });
    testWidgets('test render with replacement widgets', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteBigFactSlide(
              titleText: titleText,
              titleWidgetReplacement: Container(
                key: const Key('Title'),
              ),
              subtitleWidgetReplacement: Container(
                key: const Key('Subtitle'),
              ),
            ),
          ),
        ),
      );

      final keynoteBigFactSlideFinder = find.byType(KeynoteBigFactSlide);
      final textFinder = find.text(titleText);
      final titleReplacement = find.byKey(const Key('Title'));
      final subtitleReplacement = find.byKey(const Key('Subtitle'));
      expect(keynoteBigFactSlideFinder, findsOneWidget);
      expect(textFinder, findsNothing);
      expect(titleReplacement, findsOneWidget);
      expect(subtitleReplacement, findsOneWidget);
    });
  });

  group('Animation based tests', () {
    testWidgets('test render each widget depending on animationIndex',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteBigFactSlide(
              titleText: titleText,
              subTitleText: subTitleText,
              animationIndex: 0,
            ),
          ),
        ),
      );

      final keynoteBigFactSlideFinder = find.byType(KeynoteBigFactSlide);
      final titleTextFinder = find.text(titleText);
      final subTitleTextFinder = find.text(subTitleText);
      expect(keynoteBigFactSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subTitleTextFinder, findsNothing);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteBigFactSlide(
              titleText: titleText,
              subTitleText: subTitleText,
              animationIndex: 1,
            ),
          ),
        ),
      );

      expect(keynoteBigFactSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subTitleTextFinder, findsOneWidget);
    });
  });
}
