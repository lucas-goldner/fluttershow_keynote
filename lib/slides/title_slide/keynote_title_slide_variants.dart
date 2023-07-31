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
  ///
  /// The [titleStyle] defines the style for the title text.
  ///
  /// The [subtitleStyle] defines the style for the subtitle text.
  ///
  /// The [footerStyle] defines the style for the footer text.
  ///
  /// The [titleAlignment] sets the alignment of
  /// the title text within the slide.
  ///
  /// The [subtitleAlignment] sets the alignment
  /// of the subtitle text within the slide.
  ///
  /// The [footerAlignment] sets the alignment
  /// of the footer text within the slide.
  ///
  /// The [titleTextAlignment] sets the text alignment of the title text.
  ///
  /// The [subtitleTextAlignment] sets the text alignment of the subtitle text.
  ///
  /// The [footerTextAlignment] sets the text alignment of the footer text.
  ///
  /// The [titleSubTitleSpacing] provides a
  /// spacing widget between the title and subtitle.
  ///
  /// The [footerBottomSpacing] provides a spacing widget below the footer text.
  ///
  /// The [padding] defines the padding around the slide content.
  ///
  /// The [headerFlexUnits] sets the flex units
  /// for the header section of the slide.
  ///
  /// The [bodyFlexUnits] sets the flex units for the body section of the slide.
  ///
  /// The [footerFlexUnits] sets the flex units
  /// for the footer section of the slide.
  ///
  /// The [titleWidgetReplacement] is a widget that
  /// can replace the default title text widget.
  ///
  /// The [subtitleWidgetReplacement] is a widget that
  /// can replace the default subtitle text widget.
  ///
  /// The [footerWidgetReplacement] is a widget that
  /// can replace the default footer text widget.
  static KeynoteTitleSlide variantOne({
    required String titleText,
    required String subTitleText,
    required String footerText,
    Gradient? gradient,
    int? animationIndex,
    AnimationArguments? animationArguments,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    TextStyle? footerStyle,
    Alignment? titleAlignment,
    Alignment? subtitleAlignment,
    Alignment? footerAlignment,
    TextAlign? titleTextAlignment,
    TextAlign? subtitleTextAlignment,
    TextAlign? footerTextAlignment,
    Widget? titleSubTitleSpacing,
    Widget? footerBottomSpacing,
    EdgeInsets? padding,
    int? headerFlexUnits,
    int? bodyFlexUnits,
    int? footerFlexUnits,
    Widget? titleWidgetReplacement,
    Widget? subtitleWidgetReplacement,
    Widget? footerWidgetReplacement,
  }) =>
      KeynoteTitleSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        footerText: footerText,
        titleGradient: gradient,
        titleStyle: titleStyle ?? KeynoteTextstyles.title(),
        subtitleStyle: subtitleStyle ?? KeynoteTextstyles.subtitle(),
        footerStyle: footerStyle ?? KeynoteTextstyles.footer(),
        titleAlignment: titleAlignment ?? Alignment.bottomCenter,
        subtitleAlignment: subtitleAlignment ?? Alignment.topCenter,
        footerAlignment: footerAlignment ?? Alignment.bottomCenter,
        titleTextAlignment: titleTextAlignment,
        subtitleTextAlignment: subtitleTextAlignment,
        footerTextAlignment: footerTextAlignment,
        titleSubTitleSpacing: titleSubTitleSpacing,
        footerBottomSpacing: footerBottomSpacing,
        padding: padding,
        headerFlexUnits: headerFlexUnits,
        bodyFlexUnits: bodyFlexUnits,
        footerFlexUnits: footerFlexUnits,
        titleWidgetReplacement: titleWidgetReplacement,
        subtitleWidgetReplacement: subtitleWidgetReplacement,
        footerWidgetReplacement: footerWidgetReplacement,
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
  ///
  /// The [titleStyle] defines the style for the title text.
  ///
  /// The [subtitleStyle] defines the style for the subtitle text.
  ///
  /// The [footerStyle] defines the style for the footer text.
  ///
  /// The [titleAlignment] sets the alignment of
  /// the title text within the slide.
  ///
  /// The [subtitleAlignment] sets the alignment
  /// of the subtitle text within the slide.
  ///
  /// The [footerAlignment] sets the alignment
  /// of the footer text within the slide.
  ///
  /// The [titleTextAlignment] sets the text alignment of the title text.
  ///
  /// The [subtitleTextAlignment] sets the text alignment of the subtitle text.
  ///
  /// The [footerTextAlignment] sets the text alignment of the footer text.
  ///
  /// The [titleSubTitleSpacing] provides a
  /// spacing widget between the title and subtitle.
  ///
  /// The [footerBottomSpacing] provides a spacing widget below the footer text.
  ///
  /// The [padding] defines the padding around the slide content.
  ///
  /// The [headerFlexUnits] sets the flex units
  /// for the header section of the slide.
  ///
  /// The [bodyFlexUnits] sets the flex units for the body section of the slide.
  ///
  /// The [footerFlexUnits] sets the flex units
  /// for the footer section of the slide.
  ///
  /// The [titleWidgetReplacement] is a widget that
  /// can replace the default title text widget.
  ///
  /// The [subtitleWidgetReplacement] is a widget that
  /// can replace the default subtitle text widget.
  ///
  /// The [footerWidgetReplacement] is a widget that
  /// can replace the default footer text widget.
  static KeynoteTitleSlide variantTwo({
    required String titleText,
    required String subTitleText,
    required String footerText,
    int? animationIndex,
    AnimationArguments? animationArguments,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    TextStyle? footerStyle,
    Alignment? titleAlignment,
    Alignment? subtitleAlignment,
    Alignment? footerAlignment,
    TextAlign? titleTextAlignment,
    TextAlign? subtitleTextAlignment,
    TextAlign? footerTextAlignment,
    Widget? titleSubTitleSpacing,
    Widget? footerBottomSpacing,
    EdgeInsets? padding,
    int? headerFlexUnits,
    int? bodyFlexUnits,
    int? footerFlexUnits,
    Widget? titleWidgetReplacement,
    Widget? subtitleWidgetReplacement,
    Widget? footerWidgetReplacement,
  }) =>
      KeynoteTitleSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        footerText: footerText,
        titleStyle:
            titleStyle ?? KeynoteTextstyles.title(variant: Variants.two),
        subtitleStyle:
            subtitleStyle ?? KeynoteTextstyles.subtitle(variant: Variants.two),
        footerStyle:
            footerStyle ?? KeynoteTextstyles.footer(variant: Variants.two),
        titleAlignment: titleAlignment ?? Alignment.bottomLeft,
        subtitleAlignment: subtitleAlignment ?? Alignment.topLeft,
        footerAlignment: footerAlignment ?? Alignment.bottomLeft,
        titleTextAlignment: titleTextAlignment,
        subtitleTextAlignment: subtitleTextAlignment,
        footerTextAlignment: footerTextAlignment,
        titleSubTitleSpacing: titleSubTitleSpacing,
        footerBottomSpacing: footerBottomSpacing,
        padding: padding ?? allPadding48,
        headerFlexUnits: headerFlexUnits,
        bodyFlexUnits: bodyFlexUnits,
        footerFlexUnits: footerFlexUnits,
        titleWidgetReplacement: titleWidgetReplacement,
        subtitleWidgetReplacement: subtitleWidgetReplacement,
        footerWidgetReplacement: footerWidgetReplacement,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );
}
