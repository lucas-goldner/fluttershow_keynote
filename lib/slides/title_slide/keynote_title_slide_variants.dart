import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';
import 'package:fluttershow_keynote/slides/title_slide/keynote_title_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// Provides variants for creating instances of the [KeynoteTitleSlide].
class KeynoteTitleSlideVariants {
  /// Creates a variant one [KeynoteTitleSlide] with the specified parameters.
  ///
  /// The [titleText] represents the main title of the slide.
  ///
  /// The [subTitleText] represents the subtitle of the slide.
  ///
  /// The [footerText] represents the footer text of the slide.
  ///
  /// The [gradient] is an parameter that defines
  /// the gradient background for the title.
  ///
  /// The [animationIndex] represents the index of
  /// the slide for animation purposes.
  ///
  /// The [animationArguments] provide additional
  /// animation settings for the slide.
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

  /// Creates a variant two [KeynoteTitleSlide] with the specified parameters.
  ///
  /// The [titleText] represents the main title of the slide.
  ///
  /// The [subTitleText] represents the subtitle of the slide.
  ///
  /// The [footerText] represents the footer text of the slide.
  ///
  /// The [animationIndex] represents the index of
  /// the slide for animation purposes.
  ///
  /// The [animationArguments] provide additional
  /// animation settings for the slide.
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
        titleStyle: KeynoteTextstyles.title(variant: Variants.two),
        subtitleStyle: KeynoteTextstyles.subtitle(variant: Variants.two),
        footerStyle: KeynoteTextstyles.footer(variant: Variants.two),
        titleAlignment: Alignment.bottomLeft,
        subtitleAlignment: Alignment.topLeft,
        footerAlignment: Alignment.bottomLeft,
        padding: allPadding48,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );
}
