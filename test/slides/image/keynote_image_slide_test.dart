import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_keynote/slides/image/keynote_image_slide.dart';

void main() {
  const image = Placeholder(
    key: Key('Image'),
  );

  group('Property based tests', () {
    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynoteImageSlide(
              image: image,
            ),
          ),
        ),
      );

      final keynoteImageSlideFinder = find.byType(KeynoteImageSlide);
      final imageFinder = find.byKey(const Key('Image'));
      expect(keynoteImageSlideFinder, findsOneWidget);
      expect(imageFinder, findsOneWidget);
    });
  });
}
