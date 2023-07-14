import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_keynote/slides/agenda/keynote_agenda_slide.dart';
import 'package:fluttershow_keynote/slides/agenda/keynote_agenda_slide_variants.dart';

void main() {
  const title = 'Title';
  const subTitle = 'Subtitle';

  group('Property based tests', () {
    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteAgendaSlide(
              titleText: title,
              subTitleText: subTitle,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteAgendaSlide);
      expect(keynoteTitleSlideFinder, findsOneWidget);
    });

    testWidgets('test render with footer widget', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteAgendaSlideVariants.variantTwo(
              titleText: title,
              subTitleText: subTitle,
              footerWidget: Container(
                key: const Key('Footer'),
              ),
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynoteAgendaSlide);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      final titleTextFinder = find.text(title);
      expect(titleTextFinder, findsOneWidget);
      final subtitleTextFinder = find.text(subTitle);
      expect(subtitleTextFinder, findsOneWidget);
      final footerWidgetFinder = find.byKey(const Key('Footer'));
      expect(footerWidgetFinder, findsOneWidget);
    });

    testWidgets('test render with replacement widgets', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: KeynoteAgendaSlide(
              titleText: title,
              subTitleText: subTitle,
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

      final keynoteTitleSlideFinder = find.byType(KeynoteAgendaSlide);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      final titleTextFinder = find.text(title);
      expect(titleTextFinder, findsNothing);
      final subtitleTextFinder = find.text(subTitle);
      expect(subtitleTextFinder, findsNothing);
      final titleReplacementWidgetFinder = find.byKey(const Key('Title'));
      expect(titleReplacementWidgetFinder, findsOneWidget);
      final subtitleReplacementWidgetFinder = find.byKey(const Key('Subtitle'));
      expect(subtitleReplacementWidgetFinder, findsOneWidget);
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
                body: KeynoteAgendaSlideVariants.variantOne(
                  titleText: title,
                  subTitleText: subTitle,
                  animationIndex: animationIndex,
                ),
              ),
            ),
          );

      await repumpWithAnimationIndex(0);

      final keynoteTitleSlideFinder = find.byType(KeynoteAgendaSlide);
      expect(keynoteTitleSlideFinder, findsOneWidget);
      final headerWidgetFinder = find.text(title);
      final bodyWidgetFinder = find.text(subTitle);
      expect(headerWidgetFinder, findsOneWidget);
      expect(bodyWidgetFinder, findsNothing);

      await repumpWithAnimationIndex(1);

      expect(headerWidgetFinder, findsOneWidget);
      expect(bodyWidgetFinder, findsOneWidget);
    });
  });
}
