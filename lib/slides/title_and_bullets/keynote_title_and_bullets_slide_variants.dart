import 'package:flutter/material.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:fluttershow_keynote/slides/title_and_bullets/keynote_title_and_bullets_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// A collection of variants for the KeynoteTitleAndBulletsSlide widget.
class KeynoteTitleAndBulletsSlideVariants {
  /// Creates a variant of the KeynoteTitleAndBulletsSlide widget
  /// with specific parameters.
  ///
  /// [titleText] is the text for the slide title.
  ///
  /// [subTitleText] is the text for the slide subtitle.
  ///
  /// [bulletPoints] is the optional list of bullet points for the slide.
  ///
  /// [animationIndex] is the optional index for animation.
  ///
  /// [animationArguments] is the optional arguments for animation.
  static KeynoteTitleAndBulletsSlide variantOne({
    required String titleText,
    required String subTitleText,
    required List<String>? bulletPoints,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleAndBulletsSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        bulletPoints: bulletPoints,
        bullets: ListBullets.circle,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitleSmall(),
        bulletTextStyle: KeynoteTextstyles.body(),
        titleAlignment: Alignment.bottomCenter,
        subtitleAlignment: Alignment.topCenter,
        bulletPointsAlignment: Alignment.topLeft,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );

  /// Creates another variant of the KeynoteTitleAndBulletsSlide
  /// widget with specific parameters.
  ///
  /// [titleText] is the text for the slide title.
  ///
  /// [subTitleText] is the text for the slide subtitle.
  ///
  /// [bulletPoints] is the optional list of bullet points for the slide.
  ///
  /// [animationIndex] is the optional index for animation.
  ///
  /// [animationArguments] is the optional arguments for animation.
  static KeynoteTitleAndBulletsSlide variantTwo({
    required String titleText,
    required String subTitleText,
    required List<String>? bulletPoints,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleAndBulletsSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        bulletPoints: bulletPoints,
        bullets: ListBullets.circle,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitle(),
        bulletTextStyle: KeynoteTextstyles.body(),
        titleAlignment: Alignment.bottomLeft,
        subtitleAlignment: Alignment.topLeft,
        bulletPointsAlignment: Alignment.topLeft,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );
}
