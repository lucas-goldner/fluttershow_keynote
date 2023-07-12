import 'package:flutter/material.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:fluttershow_keynote/slides/title_and_bullets/keynote_title_and_bullets_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class KeynoteTitleAndBulletsSlideVariants {
  static KeynoteTitleAndBulletsSlide variantOne({
    required String titleText,
    required String subTitleText,
    required List<String>? bulletPoints,
    int? animationIndex,
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
      );

  static KeynoteTitleAndBulletsSlide variantTwo({
    required String titleText,
    required String subTitleText,
    required List<String>? bulletPoints,
    int? animationIndex,
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
      );
}
