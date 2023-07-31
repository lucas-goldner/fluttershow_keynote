import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';
import 'package:fluttershow_keynote/slides/big_fact/keynote_big_fact_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// A collection of variants for the [KeynoteBigFactSlide] widget.
class KeynoteBigFactSlideVariants {
  /// Creates a variant of the [KeynoteBigFactSlide] widget
  /// with a gradient background.
  ///
  /// [titleText] is the text for the slide title.
  ///
  /// [subTitleText] is the text for the slide subtitle.
  ///
  /// [titleGradient] is the gradient used for the slide title background.
  ///
  /// [titleStyle] is the style for the slide title.
  ///
  /// [subtitleStyle] is the style for the slide subtitle.
  ///
  /// [titleAlignment] is the alignment for the slide title widget.
  ///
  /// [subtitleAlignment] is the alignment for the slide subtitle widget.
  ///
  /// [titleTextAlignment] is the alignment for the slide title text.
  /// Only affects the text if no [titleGradient] is passed.
  ///
  /// [subtitleTextAlignment] is the alignment for the slide subtitle text.
  ///
  /// [titleSubTitleSpacing] is the widget to provide spacing
  /// between the title and subtitle.
  ///
  /// [padding] is the padding for the slide.
  ///
  /// [headerFlexUnits] is the flex units for the header section.
  ///
  /// [bodyFlexUnits] is the flex units for the body section.
  ///
  /// [titleWidgetReplacement] is the replacement widget for the slide title.
  ///
  /// [subtitleWidgetReplacement] is the replacement widget
  /// for the slide subtitle.
  ///
  /// [animationIndex] is the index at which the animation should start.
  ///
  /// [animationArguments] is the animation arguments for the slide animation.
  static KeynoteBigFactSlide variantOne({
    required String titleText,
    required String subTitleText,
    required Gradient titleGradient,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    Alignment? titleAlignment,
    Alignment? subtitleAlignment,
    TextAlign? titleTextAlignment,
    TextAlign? subtitleTextAlignment,
    Widget? titleSubTitleSpacing,
    EdgeInsets? padding,
    int? headerFlexUnits,
    int? bodyFlexUnits,
    Widget? titleWidgetReplacement,
    Widget? subtitleWidgetReplacement,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) {
    return KeynoteBigFactSlide(
      titleText: titleText,
      subTitleText: subTitleText,
      titleGradient: titleGradient,
      titleStyle: titleStyle ?? KeynoteTextstyles.fact(),
      subtitleStyle: subtitleStyle ?? KeynoteTextstyles.subtitle(),
      titleAlignment: titleAlignment,
      subtitleAlignment: subtitleAlignment,
      titleTextAlignment: titleTextAlignment,
      subtitleTextAlignment: subtitleTextAlignment,
      titleSubTitleSpacing: titleSubTitleSpacing,
      padding: padding,
      headerFlexUnits: headerFlexUnits,
      bodyFlexUnits: bodyFlexUnits,
      titleWidgetReplacement: titleWidgetReplacement,
      subtitleWidgetReplacement: subtitleWidgetReplacement,
      animationIndex: animationIndex,
      animationArguments: animationArguments,
    );
  }

  /// Creates a variant of the [KeynoteBigFactSlide] widget
  /// without a gradient background.
  ///
  /// [titleText] is the text for the slide title.
  ///
  /// [subTitleText] is the text for the slide subtitle.
  ///
  /// [titleStyle] is the style for the slide title.
  ///
  /// [subtitleStyle] is the style for the slide subtitle.
  ///
  /// [titleAlignment] is the alignment for the slide title widget.
  ///
  /// [subtitleAlignment] is the alignment for the slide subtitle widget.
  ///
  /// [titleTextAlignment] is the alignment for the slide title text.
  ///
  /// [subtitleTextAlignment] is the alignment for the slide subtitle text.
  ///
  /// [titleSubTitleSpacing] is the widget to provide spacing
  /// between the title and subtitle.
  ///
  /// [padding] is the padding for the slide.
  ///
  /// [headerFlexUnits] is the flex units for the header section.
  ///
  /// [bodyFlexUnits] is the flex units for the body section.
  ///
  /// [titleWidgetReplacement] is the replacement widget for the slide title.
  ///
  /// [subtitleWidgetReplacement] is the replacement widget
  /// for the slide subtitle.
  ///
  /// [animationIndex] is the index at which the animation should start.
  ///
  /// [animationArguments] is the animation arguments for the slide animation.
  static KeynoteBigFactSlide variantTwo({
    required String titleText,
    required String subTitleText,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    Alignment? titleAlignment,
    Alignment? subtitleAlignment,
    TextAlign? titleTextAlignment,
    TextAlign? subtitleTextAlignment,
    Widget? titleSubTitleSpacing,
    EdgeInsets? padding,
    int? headerFlexUnits,
    int? bodyFlexUnits,
    Widget? titleWidgetReplacement,
    Widget? subtitleWidgetReplacement,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) {
    return KeynoteBigFactSlide(
      titleText: titleText,
      subTitleText: subTitleText,
      titleStyle: titleStyle ?? KeynoteTextstyles.fact(variant: Variants.two),
      subtitleStyle:
          subtitleStyle ?? KeynoteTextstyles.subtitle(variant: Variants.two),
      titleAlignment: titleAlignment,
      subtitleAlignment: subtitleAlignment,
      titleTextAlignment: titleTextAlignment,
      subtitleTextAlignment: subtitleTextAlignment,
      titleSubTitleSpacing: titleSubTitleSpacing,
      padding: padding,
      headerFlexUnits: headerFlexUnits,
      bodyFlexUnits: bodyFlexUnits,
      titleWidgetReplacement: titleWidgetReplacement,
      subtitleWidgetReplacement: subtitleWidgetReplacement,
      animationIndex: animationIndex,
      animationArguments: animationArguments,
    );
  }
}
