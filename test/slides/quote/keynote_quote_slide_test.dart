import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_keynote/slides/quote/keynote_quote_slide.dart';
import 'package:fluttershow_keynote/slides/quote/keynote_quote_slide_variants.dart';
import 'package:fluttershow_keynote/style/keynote_gradients.dart';

void main() {
  const quoteText = 'Title';
  const attribution = 'Subtitle';
  final quoteGradient = KeynoteGradients.quoteGradient;

  group('Property based tests', () {
    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteQuoteSlide(
              quoteText: quoteText,
            ),
          ),
        ),
      );

      final keynoteQuoteSlideFinder = find.byType(KeynoteQuoteSlide);
      final quoteFinder = find.text(quoteText);
      expect(keynoteQuoteSlideFinder, findsOneWidget);
      expect(quoteFinder, findsOneWidget);

      final keynoteTitleSlideWidget =
          tester.widget<KeynoteQuoteSlide>(keynoteQuoteSlideFinder);
      expect(keynoteTitleSlideWidget.quoteText, quoteText);
    });

    testWidgets('test render with attribution text', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteQuoteSlideVariants.variantTwo(
              quoteText: quoteText,
              attributionText: attribution,
            ),
          ),
        ),
      );

      final keynoteQuoteSlideFinder = find.byType(KeynoteQuoteSlide);
      final quoteFinder = find.text(quoteText);
      final attributionFinder = find.text(attribution);
      expect(keynoteQuoteSlideFinder, findsOneWidget);
      expect(quoteFinder, findsOneWidget);
      expect(attributionFinder, findsOneWidget);
    });

    testWidgets('test render with quoteGradient', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteQuoteSlideVariants.variantOne(
              quoteText: quoteText,
              attributionText: attribution,
              quoteGradient: quoteGradient,
            ),
          ),
        ),
      );

      final keynoteQuoteSlideFinder = find.byType(KeynoteQuoteSlide);
      final gradientFinder = find.byType(GradientText);
      final quoteFinder = find.text(quoteText);
      final attributionFinder = find.text(attribution);
      expect(keynoteQuoteSlideFinder, findsOneWidget);
      expect(quoteFinder, findsOneWidget);
      expect(attributionFinder, findsOneWidget);
      expect(gradientFinder, findsOneWidget);
    });

    testWidgets('test render with replacement widgets', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteQuoteSlide(
              quoteText: quoteText,
              attributionText: attribution,
              quoteWidgetReplacement: Container(
                key: const Key('Quote'),
              ),
              attributionWidgetReplacement: Container(
                key: const Key('Attribution'),
              ),
            ),
          ),
        ),
      );

      final keynoteQuoteSlideFinder = find.byType(KeynoteQuoteSlide);
      final quoteFinder = find.text(quoteText);
      final attributionFinder = find.text(attribution);
      final quoteReplacementFinder = find.byKey(const Key('Quote'));
      final attributionReplacementFinder = find.byKey(const Key('Attribution'));
      expect(keynoteQuoteSlideFinder, findsOneWidget);
      expect(quoteFinder, findsNothing);
      expect(attributionFinder, findsNothing);
      expect(quoteReplacementFinder, findsOneWidget);
      expect(attributionReplacementFinder, findsOneWidget);
    });
  });

  group('Animation based tests', () {
    testWidgets('test render each widget depending on animationIndex',
        (tester) async {
      Future<void> repumpWithAnimationIndex(int animationIndex) async =>
          tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: KeynoteQuoteSlide(
                  quoteText: quoteText,
                  attributionText: attribution,
                  animationIndex: animationIndex,
                ),
              ),
            ),
          );

      await repumpWithAnimationIndex(0);

      final keynoteQuoteSlideFinder = find.byType(KeynoteQuoteSlide);
      final quoteTextFinder = find.text(quoteText);
      final attributonTextFinder = find.text(attribution);
      expect(keynoteQuoteSlideFinder, findsOneWidget);
      expect(quoteTextFinder, findsOneWidget);
      expect(attributonTextFinder, findsNothing);

      await repumpWithAnimationIndex(1);

      expect(quoteTextFinder, findsOneWidget);
      expect(attributonTextFinder, findsOneWidget);
    });
  });
}
