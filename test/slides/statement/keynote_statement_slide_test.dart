import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_keynote/slides/statement/keynote_statement_slide.dart';

void main() {
  const statementText = 'Statement';
  const gradient = LinearGradient(colors: [Colors.red, Colors.blue]);

  group('Property based tests', () {
    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteStatementSlide(statement: statementText),
          ),
        ),
      );

      final keynoteStatementSlideFinder = find.byType(KeynoteStatementSlide);
      final textFinder = find.text(statementText);
      expect(keynoteStatementSlideFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      final keynoteTitleSlideWidget =
          tester.widget<KeynoteStatementSlide>(keynoteStatementSlideFinder);
      expect(keynoteTitleSlideWidget.statement, statementText);
    });

    testWidgets('test render with gradient', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteStatementSlide(
              statement: statementText,
              statementGradient: gradient,
            ),
          ),
        ),
      );

      final keynoteStatementSlideFinder = find.byType(KeynoteStatementSlide);
      final gradientFinder = find.byType(GradientText);
      final textFinder = find.text(statementText);
      expect(keynoteStatementSlideFinder, findsOneWidget);
      expect(gradientFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);
      final keynoteTitleSlideWidget =
          tester.widget<KeynoteStatementSlide>(keynoteStatementSlideFinder);
      expect(keynoteTitleSlideWidget.statement, statementText);
    });

    testWidgets('test render with replacement widgets', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteStatementSlide(
              statement: statementText,
              statementTitleReplacementWidget: Container(
                key: const Key('Statement'),
              ),
            ),
          ),
        ),
      );

      final keynoteStatementSlideFinder = find.byType(KeynoteStatementSlide);
      final textFinder = find.text(statementText);
      final statementReplacement = find.byKey(const Key('Statement'));

      expect(keynoteStatementSlideFinder, findsOneWidget);
      expect(textFinder, findsNothing);
      expect(statementReplacement, findsOneWidget);
    });
  });
}
