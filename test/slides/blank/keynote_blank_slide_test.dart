import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_keynote/slides/blank/keynote_blank_slide.dart';

void main() {
  const header = Text('Header');
  const body = Text('Body');
  const footer = Text('Footer');

  group('Property based tests', () {
    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteBlankSlide(),
          ),
        ),
      );

      final keynoteBlankSlideFinder = find.byType(KeynoteBlankSlide);
      expect(keynoteBlankSlideFinder, findsOneWidget);
    });

    testWidgets('test render with set widgets', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteBlankSlide(
              headerWidget: header,
              bodyWidget: body,
              footerWidget: footer,
            ),
          ),
        ),
      );

      final keynoteBlankSlideFinder = find.byType(KeynoteBlankSlide);
      expect(keynoteBlankSlideFinder, findsOneWidget);
      final headerWidgetFinder = find.text('Header');
      expect(headerWidgetFinder, findsOneWidget);
      final bodyWidgetFinder = find.text('Body');
      expect(bodyWidgetFinder, findsOneWidget);
      final footerWidgetFinder = find.text('Footer');
      expect(footerWidgetFinder, findsOneWidget);
    });
  });

  group('Animation based tests', () {
    testWidgets(
        'test render each widget depending on animationIndex default indicies',
        (tester) async {
      Future<void> repumpWithAnimationIndex(int animationIndex) async =>
          tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: KeynoteBlankSlide(
                  headerWidget: header,
                  bodyWidget: body,
                  footerWidget: footer,
                  animationIndex: animationIndex,
                ),
              ),
            ),
          );

      await repumpWithAnimationIndex(0);

      final keynoteBlankSlideFinder = find.byType(KeynoteBlankSlide);
      expect(keynoteBlankSlideFinder, findsOneWidget);
      final headerWidgetFinder = find.text('Header');
      final bodyWidgetFinder = find.text('Body');
      final footerWidgetFinder = find.text('Footer');
      expect(headerWidgetFinder, findsOneWidget);
      expect(bodyWidgetFinder, findsNothing);
      expect(footerWidgetFinder, findsNothing);

      await repumpWithAnimationIndex(1);

      expect(headerWidgetFinder, findsOneWidget);
      expect(bodyWidgetFinder, findsOneWidget);
      expect(footerWidgetFinder, findsNothing);

      await repumpWithAnimationIndex(2);

      expect(headerWidgetFinder, findsOneWidget);
      expect(bodyWidgetFinder, findsOneWidget);
      expect(footerWidgetFinder, findsOneWidget);
    });

    testWidgets(
        'test render each widget depending on animationIndex with set indicies',
        (tester) async {
      Future<void> repumpWithAnimationIndex(int animationIndex) async =>
          tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: KeynoteBlankSlide(
                  headerWidget: header,
                  bodyWidget: body,
                  footerWidget: footer,
                  animationIndex: animationIndex,
                  animationIndices: (2, 1, 0),
                ),
              ),
            ),
          );

      await repumpWithAnimationIndex(0);

      final keynoteBlankSlideFinder = find.byType(KeynoteBlankSlide);
      expect(keynoteBlankSlideFinder, findsOneWidget);
      final headerWidgetFinder = find.text('Header');
      final bodyWidgetFinder = find.text('Body');
      final footerWidgetFinder = find.text('Footer');
      expect(headerWidgetFinder, findsNothing);
      expect(bodyWidgetFinder, findsNothing);
      expect(footerWidgetFinder, findsOneWidget);

      await repumpWithAnimationIndex(1);

      expect(headerWidgetFinder, findsNothing);
      expect(bodyWidgetFinder, findsOneWidget);
      expect(footerWidgetFinder, findsOneWidget);

      await repumpWithAnimationIndex(2);

      expect(headerWidgetFinder, findsOneWidget);
      expect(bodyWidgetFinder, findsOneWidget);
      expect(footerWidgetFinder, findsOneWidget);
    });
  });
}
