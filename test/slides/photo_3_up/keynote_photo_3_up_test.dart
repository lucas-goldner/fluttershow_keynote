import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_keynote/slides/photo_3_up/keynote_photo_3_up.dart';

void main() {
  const bigImage = Placeholder(
    key: Key('bigImage'),
  );
  const imageSmallOne = Placeholder(
    key: Key('imageSmallOne'),
  );
  const imageSmallTwo = Placeholder(
    key: Key('imageSmallTwo'),
  );

  group('Property based tests', () {
    testWidgets('test render with default properties', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: KeynotePhoto3UpSlide(
              bigImage: bigImage,
              smallImageOne: imageSmallOne,
              smallImageTwo: imageSmallTwo,
            ),
          ),
        ),
      );

      final keynoteTitleSlideFinder = find.byType(KeynotePhoto3UpSlide);
      final bigImageFinder = find.byKey(const Key('bigImage'));
      final smallImageOneFinder = find.byKey(const Key('imageSmallOne'));
      final smallImageTwoFinder = find.byKey(const Key('imageSmallTwo'));
      expect(keynoteTitleSlideFinder, findsOneWidget);

      expect(bigImageFinder, findsOneWidget);
      expect(smallImageOneFinder, findsOneWidget);
      expect(smallImageTwoFinder, findsOneWidget);
    });
  });
}
