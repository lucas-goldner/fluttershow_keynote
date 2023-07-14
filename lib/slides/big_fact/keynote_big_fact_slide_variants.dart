import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';
import 'package:fluttershow_keynote/slides/big_fact/keynote_big_fact_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// A collection of variants for the KeynoteBigFactSlide widget.
class KeynoteBigFactSlideVariants {
  /// Creates a variant of the KeynoteBigFactSlide widget
  /// with a gradient background.
  ///
  /// [titleText] is the text for the slide title.
  ///
  /// [subTitleText] is the text for the slide subtitle.
  ///
  /// [gradient] is the gradient used for the slide title background.
  ///
  /// [animationIndex] is the optional index at
  /// which the animation should start.
  ///
  /// [animationArguments] is the optional animation arguments
  /// for the slide animation.
  static KeynoteBigFactSlide variantOne({
    required String titleText,
    required String subTitleText,
    required Gradient gradient,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteBigFactSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        titleGradient: gradient,
        titleStyle: KeynoteTextstyles.fact(),
        subtitleStyle: KeynoteTextstyles.subtitle(),
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );

  /// Creates a variant of the KeynoteBigFactSlide widget
  /// without a gradient background.
  ///
  /// [titleText] is the text for the slide title.
  ///
  /// [subTitleText] is the text for the slide subtitle.
  ///
  /// [animationIndex] is the optional index at which
  /// the animation should start.
  ///
  /// [animationArguments] is the optional animation arguments
  /// for the slide animation.
  static KeynoteBigFactSlide variantTwo({
    required String titleText,
    required String subTitleText,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteBigFactSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        titleStyle: KeynoteTextstyles.fact(variant: Variants.two),
        subtitleStyle: KeynoteTextstyles.subtitle(variant: Variants.two),
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );
}
