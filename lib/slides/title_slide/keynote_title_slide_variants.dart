import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';
import 'package:fluttershow_keynote/slides/title_slide/keynote_title_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class KeynoteTitleSlideVariants {
  static KeynoteTitleSlide variantOne({
    required String titleText,
    required String subTitleText,
    required String footerText,
    Gradient? gradient,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        footerText: footerText,
        titleGradient: gradient,
        titleStyle: KeynoteTextstyles.title(),
        subtitleStyle: KeynoteTextstyles.subtitle(),
        footerStyle: KeynoteTextstyles.footer(),
        titleAlignment: Alignment.bottomCenter,
        subtitleAlignment: Alignment.topCenter,
        footerAlignment: Alignment.bottomCenter,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );

  static KeynoteTitleSlide variantTwo({
    required String titleText,
    required String subTitleText,
    required String footerText,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        footerText: footerText,
        titleStyle: KeynoteTextstyles.title(variant: Variants.variantTwo),
        subtitleStyle: KeynoteTextstyles.subtitle(variant: Variants.variantTwo),
        footerStyle: KeynoteTextstyles.footer(variant: Variants.variantTwo),
        titleAlignment: Alignment.bottomLeft,
        subtitleAlignment: Alignment.topLeft,
        footerAlignment: Alignment.bottomLeft,
        padding: allPadding48,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );
}
