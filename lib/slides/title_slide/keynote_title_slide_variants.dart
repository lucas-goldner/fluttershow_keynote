import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_keynote/slides/title_slide/keynote_title_slide.dart';

class KeynoteTitleSlideVariants {
  static KeynoteTitleSlide variantOne({
    required String titleText,
    required String subTitleText,
    required String footerText,
    required Gradient gradient,
    required TextStyle titleStyle,
    required TextStyle subtitleStyle,
    required TextStyle footerStyle,
  }) =>
      KeynoteTitleSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        footerText: footerText,
        titleGradient: gradient,
        titleStyle: titleStyle,
        subtitleStyle: subtitleStyle,
        footerStyle: footerStyle,
        titleAlignment: Alignment.bottomCenter,
        subtitleAlignment: Alignment.topCenter,
        footerAlignment: Alignment.bottomCenter,
      );

  static KeynoteTitleSlide variantTwo({
    required String titleText,
    required String subTitleText,
    required String footerText,
    required TextStyle titleStyle,
    required TextStyle subtitleStyle,
    required TextStyle footerStyle,
  }) =>
      KeynoteTitleSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        footerText: footerText,
        titleStyle: titleStyle,
        subtitleStyle: subtitleStyle,
        footerStyle: footerStyle,
        titleAlignment: Alignment.bottomLeft,
        subtitleAlignment: Alignment.topLeft,
        footerAlignment: Alignment.bottomLeft,
        padding: allPadding48,
      );
}
