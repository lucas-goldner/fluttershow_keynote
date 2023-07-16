import 'package:flutter/cupertino.dart';

/// A collection of predefined gradients used in Keynote slides.
class KeynoteGradients {
  /// The gradient used for the title text in slides.
  static const LinearGradient titleGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomCenter,
    colors: [
      CupertinoColors.white,
      CupertinoColors.inactiveGray,
    ],
  );

  /// The gradient used for the title text in title slides.
  static const LinearGradient titleSlideGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      CupertinoColors.systemTeal,
      CupertinoColors.systemIndigo,
      CupertinoColors.systemPurple,
      CupertinoColors.systemPink,
    ],
  );

  /// The gradient used the for section slide.
  static LinearGradient sectionTitleGradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF00FC40),
      Color(0xFF0076F7),
    ],
  );

  /// The gradient used in the quote slide.
  static LinearGradient quoteGradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(255, 255, 35, 180),
      Color.fromARGB(255, 255, 219, 64),
    ],
  );
}
