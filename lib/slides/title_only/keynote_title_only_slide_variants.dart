import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_keynote/slides/title_only/keynote_title_only_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// Provides static methods to create different variants
/// of the [KeynoteTitleOnlySlide].
class KeynoteTitleOnlySlideVariants {
  /// Creates a variant one of [KeynoteTitleOnlySlide].
  ///
  /// The [titleText] is the main title displayed on the slide.
  ///
  /// The [subTitleText] is a subtitle displayed below the title.
  ///
  /// The [animationIndex] is the index of the slide for animations.
  ///
  /// The [animationArguments] is the configuration for the slide animations.
  ///
  /// The [titleStyle] is the style applied to the title text.
  ///
  /// The [subtitleStyle] is the style applied to the subtitle text.
  ///
  /// The [titleAlignment] is the alignment of
  /// the title text within its container.
  ///
  /// The [subtitleAlignment] is the alignment of the
  /// subtitle text within its container.
  ///
  /// The [titleTextAlignment] is the text alignment of the title text.
  ///
  /// The [subtitleTextAlignment] is the text alignment of the subtitle text.
  ///
  /// The [titleSubTitleSpacing] is the spacing widget placed
  /// between the title and subtitle.
  ///
  /// The [padding] is the padding applied to the slide's content.
  ///
  /// The [headerFlexUnits] is the number of flex units for the header section.
  ///
  /// The [bodyFlexUnits] is the number of flex units for the body section.
  ///
  /// The [titleWidgetReplacement] is a replacement widget for the title text.
  ///
  /// The [subtitleWidgetReplacement] is a replacement widget
  /// for the subtitle text.
  ///
  /// Returns a [KeynoteTitleOnlySlide] instance with
  /// the specified configuration.
  static KeynoteTitleOnlySlide variantOne({
    required String titleText,
    required String subTitleText,
    int? animationIndex,
    AnimationArguments? animationArguments,
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
  }) {
    return KeynoteTitleOnlySlide(
      titleText: titleText,
      subTitleText: subTitleText,
      titleStyle: titleStyle ?? KeynoteTextstyles.titleSmall(),
      subtitleStyle: subtitleStyle ?? KeynoteTextstyles.subtitleSmall(),
      titleAlignment: titleAlignment ?? Alignment.bottomCenter,
      subtitleAlignment: subtitleAlignment ?? Alignment.topCenter,
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

  /// Creates a variant two of [KeynoteTitleOnlySlide].
  ///
  /// The [titleText] is the main title displayed on the slide.
  ///
  /// The [subTitleText] is a subtitle displayed below the title.
  ///
  /// The [animationIndex] is the index of the slide for animations.
  ///
  /// The [animationArguments] is the configuration for the slide animations.
  ///
  /// The [titleStyle] is the style applied to the title text.
  ///
  /// The [subtitleStyle] is the style applied to the subtitle text.
  ///
  /// The [titleAlignment] is the alignment of the title text
  /// within its container.
  ///
  /// The [subtitleAlignment] is the alignment of the subtitle text
  /// within its container.
  ///
  /// The [titleTextAlignment] is the text alignment of the title text.
  ///
  /// The [subtitleTextAlignment] is the text alignment of the subtitle text.
  ///
  /// The [titleSubTitleSpacing] is the spacing widget placed between
  /// the title and subtitle.
  ///
  /// The [padding] is the padding applied to the slide's content.
  ///
  /// The [headerFlexUnits] is the number of flex units for the header section.
  ///
  /// The [bodyFlexUnits] is the number of flex units for the body section.
  ///
  /// The [titleWidgetReplacement] is a replacement widget for the title text.
  ///
  /// The [subtitleWidgetReplacement] is a replacement widget
  /// for the subtitle text.
  ///
  /// Returns a [KeynoteTitleOnlySlide] instance with
  /// the specified configuration.
  static KeynoteTitleOnlySlide variantTwo({
    required String titleText,
    required String subTitleText,
    int? animationIndex,
    AnimationArguments? animationArguments,
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
  }) {
    return KeynoteTitleOnlySlide(
      titleText: titleText,
      subTitleText: subTitleText,
      titleStyle: titleStyle ?? KeynoteTextstyles.titleSmall(),
      subtitleStyle: subtitleStyle ?? KeynoteTextstyles.subtitleSmall(),
      titleAlignment: titleAlignment ?? Alignment.bottomLeft,
      subtitleAlignment: subtitleAlignment ?? Alignment.topLeft,
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
