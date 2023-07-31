import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_keynote/slides/agenda/keynote_agenda_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// A class that provides variant configurations
/// for the [KeynoteAgendaSlide] widget.
/// Consists of a title and a subtitle.
class KeynoteAgendaSlideVariants {
  /// Constructs a [KeynoteAgendaSlide] with variant one configuration.
  ///
  /// [titleText] is the text for the title.
  ///
  /// [subTitleText] is the text for the subtitle.
  ///
  /// [titleStyle] is the text style for the title.
  ///
  /// [subtitleStyle] is the text style for the subtitle.
  ///
  /// [titleTextAlignment] is the text alignment for the title widget.
  ///
  /// [subtitleTextAlignment] is the text alignment for the subtitle widget.
  ///
  /// [titleAlignment] is the alignment for the title widget.
  ///
  /// [subtitleAlignment] is the alignment for the subtitle widget.
  ///
  /// [footerAlignment] is the alignment for the footer widget.
  ///
  /// [titleSubTitleSpacing] is the widget to specify spacing between
  /// the title and subtitle.
  ///
  /// [subtitleFooterSpacing] is the widget to specify spacing between
  /// the subtitle and footer.
  ///
  /// [padding] is the padding for the slide.
  ///
  /// [headerFlexUnits] is the flex units for the slide header.
  ///
  /// [bodyFlexUnits] is the flex units for the slide body.
  ///
  /// [footerFlexUnits] is the flex units for the slide footer.
  ///
  /// [titleWidgetReplacement] is the replacement widget for the title.
  ///
  /// [subtitleWidgetReplacement] is the replacement widget for the subtitle.
  ///
  /// [footerWidget] is the widget for the slide footer.
  ///
  /// [animationIndex] is the index at which the animation should start.
  ///
  /// [animationArguments] is the animation arguments for the slide animation.
  static KeynoteAgendaSlide variantOne({
    required String titleText,
    required String subTitleText,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    TextAlign? titleTextAlignment,
    TextAlign? subtitleTextAlignment,
    Alignment? titleAlignment,
    Alignment? subtitleAlignment,
    Alignment? footerAlignment,
    Widget? titleSubTitleSpacing,
    Widget? subtitleFooterSpacing,
    EdgeInsets? padding,
    int? headerFlexUnits,
    int? bodyFlexUnits,
    int? footerFlexUnits,
    Widget? titleWidgetReplacement,
    Widget? subtitleWidgetReplacement,
    Widget? footerWidget,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteAgendaSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        titleStyle: titleStyle ?? KeynoteTextstyles.titleSmall(),
        subtitleStyle: subtitleStyle ?? KeynoteTextstyles.subtitleSmall(),
        titleTextAlignment: titleTextAlignment,
        subtitleTextAlignment: subtitleTextAlignment,
        titleAlignment: titleAlignment ?? Alignment.bottomCenter,
        subtitleAlignment: subtitleAlignment ?? Alignment.topCenter,
        footerAlignment: footerAlignment,
        titleSubTitleSpacing: titleSubTitleSpacing,
        subtitleFooterSpacing: subtitleFooterSpacing,
        padding: padding,
        headerFlexUnits: headerFlexUnits,
        bodyFlexUnits: bodyFlexUnits,
        footerFlexUnits: footerFlexUnits,
        titleWidgetReplacement: titleWidgetReplacement,
        subtitleWidgetReplacement: subtitleWidgetReplacement,
        footerWidget: footerWidget,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );

  /// Constructs a [KeynoteAgendaSlide] with variant two configuration.
  ///
  /// [titleText] is the text for the title.
  ///
  /// [subTitleText] is the text for the subtitle.
  ///
  /// [titleStyle] is the text style for the title.
  ///
  /// [subtitleStyle] is the text style for the subtitle.
  ///
  /// [titleTextAlignment] is the text alignment for the title widget.
  ///
  /// [subtitleTextAlignment] is the text alignment for the subtitle widget.
  ///
  /// [titleAlignment] is the alignment for the title widget.
  ///
  /// [subtitleAlignment] is the alignment for the subtitle widget.
  ///
  /// [footerAlignment] is the alignment for the footer widget.
  ///
  /// [titleSubTitleSpacing] is the widget to specify spacing between
  /// the title and subtitle.
  ///
  /// [subtitleFooterSpacing] is the widget to specify spacing between
  /// the subtitle and footer.
  ///
  /// [padding] is the padding for the slide.
  ///
  /// [headerFlexUnits] is the flex units for the slide header.
  ///
  /// [bodyFlexUnits] is the flex units for the slide body.
  ///
  /// [footerFlexUnits] is the flex units for the slide footer.
  ///
  /// [titleWidgetReplacement] is the replacement widget for the title.
  ///
  /// [subtitleWidgetReplacement] is the replacement widget for the subtitle.
  ///
  /// [footerWidget] is the widget for the slide footer.
  ///
  /// [animationIndex] is the index at which the animation should start.
  ///
  /// [animationArguments] is the animation arguments for the slide animation.
  static KeynoteAgendaSlide variantTwo({
    required String titleText,
    required String subTitleText,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    TextAlign? titleTextAlignment,
    TextAlign? subtitleTextAlignment,
    Alignment? titleAlignment,
    Alignment? subtitleAlignment,
    Alignment? footerAlignment,
    Widget? titleSubTitleSpacing,
    Widget? subtitleFooterSpacing,
    EdgeInsets? padding,
    int? headerFlexUnits,
    int? bodyFlexUnits,
    int? footerFlexUnits,
    Widget? titleWidgetReplacement,
    Widget? subtitleWidgetReplacement,
    Widget? footerWidget,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteAgendaSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        titleStyle: titleStyle ?? KeynoteTextstyles.titleSmall(),
        subtitleStyle: subtitleStyle ?? KeynoteTextstyles.subtitle(),
        titleTextAlignment: titleTextAlignment,
        subtitleTextAlignment: subtitleTextAlignment,
        titleAlignment: titleAlignment ?? Alignment.bottomLeft,
        subtitleAlignment: subtitleAlignment ?? Alignment.topLeft,
        footerAlignment: footerAlignment,
        titleSubTitleSpacing: titleSubTitleSpacing,
        subtitleFooterSpacing: subtitleFooterSpacing,
        padding: padding ?? allPadding48,
        headerFlexUnits: headerFlexUnits,
        bodyFlexUnits: bodyFlexUnits,
        footerFlexUnits: footerFlexUnits,
        titleWidgetReplacement: titleWidgetReplacement,
        subtitleWidgetReplacement: subtitleWidgetReplacement,
        footerWidget: footerWidget,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );
}
