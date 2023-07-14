import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_keynote/slides/section/keynote_section_slide.dart';
import 'package:fluttershow_keynote/style/keynote_gradients.dart';

void main() {
  const sectionText = 'Statement';
  final gradient = KeynoteGradients.sectionTitleGradient;

  group('Property based tests', () {
    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteSectionSlide(sectionText: sectionText),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteSectionSlide);
      final textFinder = find.text(sectionText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      final keynoteTitleSlideWidget =
          tester.widget<KeynoteSectionSlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.sectionText, sectionText);
    });

    testWidgets('test render with gradient', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteSectionSlide(
              sectionText: sectionText,
              sectionGradient: gradient,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteSectionSlide);
      final gradientFinder = find.byType(GradientText);
      final textFinder = find.text(sectionText);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(gradientFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      final keynoteTitleSlideWidget =
          tester.widget<KeynoteSectionSlide>(keynoteTitleSlideFinder);
      expect(keynoteTitleSlideWidget.sectionText, sectionText);
    });

    testWidgets('test render with replacement widgets', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteSectionSlide(
              sectionText: sectionText,
              sectionTitleReplacementWidget: Container(
                key: const Key('Section'),
              ),
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteSectionSlide);
      final textFinder = find.text(sectionText);
      final statementReplacement = find.byKey(const Key('Section'));

      expect(keynoteTitleSlideFinder, findsOneWidget);
      expect(textFinder, findsNothing);
      expect(statementReplacement, findsOneWidget);
    });
  });
}
