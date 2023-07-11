import 'package:flutter/cupertino.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';
import 'package:fluttershow_keynote/slides/big_fact/keynote_big_fact_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class KeynoteBigFactSlideVariants {
  static KeynoteBigFactSlide variantOne({
    required String titleText,
    required String subTitleText,
    required Gradient gradient,
  }) =>
      KeynoteBigFactSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        titleGradient: gradient,
        titleStyle: KeynoteTextstyles.fact(),
        subtitleStyle: KeynoteTextstyles.subtitle(),
      );

  static KeynoteBigFactSlide variantTwo({
    required String titleText,
    required String subTitleText,
  }) =>
      KeynoteBigFactSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        titleStyle: KeynoteTextstyles.fact(variant: Variants.variantTwo),
        subtitleStyle: KeynoteTextstyles.subtitle(variant: Variants.variantTwo),
      );
}
