import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_keynote/slides/title_only/keynote_title_only_slide.dart';
import 'package:fluttershow_keynote/slides/title_only/keynote_title_only_slide_variants.dart';

void main() {
  const titleText = 'Title';
  const subTitleText = 'Subtitle';

  group('Property based tests', () {
    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteTitleOnlySlide(
              titleText: titleText,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteTitleOnlySlide);
      final textFinder = find.text(titleText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      final keynoteTitleSlideWidget =
          tester.widget<KeynoteTitleOnlySlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, isNull);
    });

    testWidgets('test render variant one with default properties',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteTitleOnlySlideVariants.variantOne(
              titleText: titleText,
              subTitleText: subTitleText,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteTitleOnlySlide);
      final textFinder = find.text(titleText);
      final subtitleTextFinder = find.text(subTitleText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      expect(subtitleTextFinder, findsOneWidget);
      final keynoteTitleSlideWidget =
          tester.widget<KeynoteTitleOnlySlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
    });

    testWidgets('test render variant two with default properties',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteTitleOnlySlideVariants.variantTwo(
              titleText: titleText,
              subTitleText: subTitleText,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteTitleOnlySlide);
      final textFinder = find.text(titleText);
      final subtitleTextFinder = find.text(subTitleText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      expect(subtitleTextFinder, findsOneWidget);
      final keynoteTitleSlideWidget =
          tester.widget<KeynoteTitleOnlySlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.titleText, titleText);
      expect(keynoteTitleSlideWidget.subTitleText, subTitleText);
    });
    testWidgets('test render with replacement widgets', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteTitleOnlySlide(
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

      final keynoteTitleSlideFinder = find.byType(KeynoteTitleOnlySlide);
      final textFinder = find.text(titleText);
      final titleReplacement = find.byKey(const Key('Title'));
      final subtitleReplacement = find.byKey(const Key('Subtitle'));
      expect(keynoteTitleSlideFinder, findsOneWidget);
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
            body: KeynoteTitleOnlySlide(
              titleText: titleText,
              subTitleText: subTitleText,
              animationIndex: 0,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteTitleOnlySlide);
      final titleTextFinder = find.text(titleText);
      final subtitleTextFinder = find.text(subTitleText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subtitleTextFinder, findsNothing);

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteTitleOnlySlide(
              titleText: titleText,
              subTitleText: subTitleText,
              animationIndex: 1,
            ),
          ),
        ),
      );

      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(titleTextFinder, findsOneWidget);
      expect(subtitleTextFinder, findsOneWidget);
    });
  });
}
