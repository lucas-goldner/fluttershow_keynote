import 'package:flutter/material.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:fluttershow_keynote/slides/title_and_bullets/keynote_title_and_bullets_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// A collection of variants for the [KeynoteTitleAndBulletsSlide] widget.
class KeynoteTitleAndBulletsSlideVariants {
  /// Creates a variant of the [KeynoteTitleAndBulletsSlide] widget
  /// with specific parameters.
  ///
  /// [titleText] is the text for the title of the slide.
  ///
  /// [subTitleText] is the text for the subtitle of the slide.
  ///
  /// [bulletPoints] is the list of bullet points for the slide.
  ///
  /// [bulletTextStyle] is the style for the bullet points text.
  ///
  /// [bullets] is the type of bullets to use for the bullet points.
  ///
  /// [titleStyle] is the style for the title text.
  ///
  /// [subtitleStyle] is the style for the subtitle text.
  ///
  /// [bulletPointsAlignment] is the alignment of the bullet points widget.
  ///
  /// [titleAlignment] is the alignment of the title widget.
  ///
  /// [subtitleAlignment] is the alignment of the subtitle widget.
  ///
  /// [titleTextAlignment] is the text alignment of the title.
  ///
  /// [subtitleTextAlignment] is the text alignment of the subtitle.
  ///
  /// [bulletTextAlignment] is the text alignment of the bullet text.
  ///
  /// [titleSubTitleSpacing] is the widget to use for spacing
  /// between the title and subtitle.
  ///
  /// [subtitleBulletTextSpacing] is the widget to use for spacing
  /// between the subtitle and bullet points.
  ///
  /// [bulletPointsPadding] is the padding for the bullet points.
  ///
  /// [padding] is the padding for the slide.
  ///
  /// [headerFlexUnits] is the number of flex units for the header section.
  ///
  /// [bodyFlexUnits] is the number of flex units for the body section.
  ///
  /// [footerFlexUnits] is the number of flex units for the footer section.
  ///
  /// [titleWidgetReplacement] is the widget to replace the title text.
  ///
  /// [subtitleWidgetReplacement] is the widget to replace the subtitle text.
  ///
  /// [bulletPointsWidgetReplacement] is the widget to
  /// replace the bullet points.
  ///
  /// [animationIndex] is the index of the animation for the slide.
  ///
  /// [animationArguments] is the arguments for the animation.
  static KeynoteTitleAndBulletsSlide variantOne({
    required String titleText,
    required String subTitleText,
    required List<String>? bulletPoints,
    TextStyle? bulletTextStyle,
    ListBullets? bullets,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    Alignment? bulletPointsAlignment,
    Alignment? titleAlignment,
    Alignment? subtitleAlignment,
    TextAlign? titleTextAlignment,
    TextAlign? subtitleTextAlignment,
    TextAlign? bulletTextAlignment,
    Widget? titleSubTitleSpacing,
    Widget? subtitleBulletTextSpacing,
    EdgeInsets? bulletPointsPadding,
    EdgeInsets? padding,
    int? headerFlexUnits,
    int? bodyFlexUnits,
    int? footerFlexUnits,
    Widget? titleWidgetReplacement,
    Widget? subtitleWidgetReplacement,
    Widget? bulletPointsWidgetReplacement,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) {
    return KeynoteTitleAndBulletsSlide(
      titleText: titleText,
      subTitleText: subTitleText,
      bulletPoints: bulletPoints,
      bulletTextStyle: bulletTextStyle ?? KeynoteTextstyles.body(),
      bullets: bullets ?? ListBullets.circle,
      titleStyle: titleStyle ?? KeynoteTextstyles.titleSmall(),
      subtitleStyle: subtitleStyle ?? KeynoteTextstyles.subtitleSmall(),
      bulletPointsAlignment: bulletPointsAlignment ?? Alignment.topLeft,
      titleAlignment: titleAlignment ?? Alignment.bottomCenter,
      subtitleAlignment: subtitleAlignment ?? Alignment.topCenter,
      titleTextAlignment: titleTextAlignment,
      subtitleTextAlignment: subtitleTextAlignment,
      bulletTextAlignment: bulletTextAlignment,
      titleSubTitleSpacing: titleSubTitleSpacing,
      subtitleBulletTextSpacing: subtitleBulletTextSpacing,
      bulletPointsPadding: bulletPointsPadding,
      padding: padding,
      headerFlexUnits: headerFlexUnits,
      bodyFlexUnits: bodyFlexUnits,
      footerFlexUnits: footerFlexUnits,
      titleWidgetReplacement: titleWidgetReplacement,
      subtitleWidgetReplacement: subtitleWidgetReplacement,
      bulletPointsWidgetReplacement: bulletPointsWidgetReplacement,
      animationIndex: animationIndex,
      animationArguments: animationArguments,
    );
  }

  /// Creates another variant of the [KeynoteTitleAndBulletsSlide]
  /// widget with specific parameters.
  ///
  /// [titleText] is the text for the title of the slide.
  ///
  /// [subTitleText] is the text for the subtitle of the slide.
  ///
  /// [bulletPoints] is the list of bullet points for the slide.
  ///
  /// [bulletTextStyle] is the style for the bullet points text.
  ///
  /// [bullets] is the type of bullets to use for the bullet points.
  ///
  /// [titleStyle] is the style for the title text.
  ///
  /// [subtitleStyle] is the style for the subtitle text.
  ///
  /// [bulletPointsAlignment] is the alignment of the bullet points widget.
  ///
  /// [titleAlignment] is the alignment of the title widget.
  ///
  /// [subtitleAlignment] is the alignment of the subtitle widget.
  ///
  /// [titleTextAlignment] is the text alignment of the title.
  ///
  /// [subtitleTextAlignment] is the text alignment of the subtitle.
  ///
  /// [bulletTextAlignment] is the text alignment of the bullet text.
  ///
  /// [titleSubTitleSpacing] is the widget to use for spacing
  /// between the title and subtitle.
  ///
  /// [subtitleBulletTextSpacing] is the widget to use for spacing
  /// between the subtitle and bullet points.
  ///
  /// [bulletPointsPadding] is the padding for the bullet points.
  ///
  /// [padding] is the padding for the slide.
  ///
  /// [headerFlexUnits] is the number of flex units for the header section.
  ///
  /// [bodyFlexUnits] is the number of flex units for the body section.
  ///
  /// [footerFlexUnits] is the number of flex units for the footer section.
  ///
  /// [titleWidgetReplacement] is the widget to replace the title text.
  ///
  /// [subtitleWidgetReplacement] is the widget to replace the subtitle text.
  ///
  /// [bulletPointsWidgetReplacement] is the widget
  /// to replace the bullet points.
  ///
  /// [animationIndex] is the index of the animation for the slide.
  ///
  /// [animationArguments] is the arguments for the animation.
  static KeynoteTitleAndBulletsSlide variantTwo({
    required String titleText,
    required String subTitleText,
    required List<String>? bulletPoints,
    TextStyle? bulletTextStyle,
    ListBullets? bullets,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    Alignment? bulletPointsAlignment,
    Alignment? titleAlignment,
    Alignment? subtitleAlignment,
    TextAlign? titleTextAlignment,
    TextAlign? subtitleTextAlignment,
    TextAlign? bulletTextAlignment,
    Widget? titleSubTitleSpacing,
    Widget? subtitleBulletText,
    Widget? subtitleBulletTextSpacing,
    EdgeInsets? bulletPointsPadding,
    EdgeInsets? padding,
    int? headerFlexUnits,
    int? bodyFlexUnits,
    int? footerFlexUnits,
    Widget? titleWidgetReplacement,
    Widget? subtitleWidgetReplacement,
    Widget? bulletPointsWidgetReplacement,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) {
    return KeynoteTitleAndBulletsSlide(
      titleText: titleText,
      subTitleText: subTitleText,
      bulletPoints: bulletPoints,
      bulletTextStyle: bulletTextStyle ?? KeynoteTextstyles.body(),
      bullets: bullets ?? ListBullets.circle,
      titleStyle: titleStyle ?? KeynoteTextstyles.titleSmall(),
      subtitleStyle: subtitleStyle ?? KeynoteTextstyles.subtitle(),
      bulletPointsAlignment: bulletPointsAlignment ?? Alignment.topLeft,
      titleAlignment: titleAlignment ?? Alignment.bottomLeft,
      subtitleAlignment: subtitleAlignment ?? Alignment.topLeft,
      titleTextAlignment: titleTextAlignment,
      subtitleTextAlignment: subtitleTextAlignment,
      bulletTextAlignment: bulletTextAlignment,
      titleSubTitleSpacing: titleSubTitleSpacing,
      subtitleBulletTextSpacing: subtitleBulletTextSpacing,
      bulletPointsPadding: bulletPointsPadding,
      padding: padding,
      headerFlexUnits: headerFlexUnits,
      bodyFlexUnits: bodyFlexUnits,
      footerFlexUnits: footerFlexUnits,
      titleWidgetReplacement: titleWidgetReplacement,
      subtitleWidgetReplacement: subtitleWidgetReplacement,
      bulletPointsWidgetReplacement: bulletPointsWidgetReplacement,
      animationIndex: animationIndex,
      animationArguments: animationArguments,
    );
  }
}
