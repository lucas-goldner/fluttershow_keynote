import 'package:flutter/cupertino.dart';

class KeynoteGradients {
  static const LinearGradient titleGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomCenter,
    colors: [
      CupertinoColors.white,
      CupertinoColors.inactiveGray,
    ],
  );

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

  static LinearGradient sectionTitleGradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF00FC40),
      Color(0xFF0076F7),
    ],
  );

  static LinearGradient quoteGradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(255, 255, 35, 180),
      Color.fromARGB(255, 255, 219, 64),
    ],
  );
}
