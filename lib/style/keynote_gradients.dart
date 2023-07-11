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
}
