import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_keynote/slides/agenda/keynote_agenda_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// A class that provides variant configurations
/// for the `KeynoteAgendaSlide` widget.
/// Consists of a title and a subtitle.
class KeynoteAgendaSlideVariants {
  /// Constructs a `KeynoteAgendaSlide` with variant one configuration.
  ///
  /// [titleText] is the text for the title.
  ///
  /// [subTitleText] is the text for the subtitle.
  ///
  /// [footerWidget] is an optional widget for the slide footer.
  ///
  /// [animationIndex] is the optional index at
  /// which the animation should start.
  ///
  /// [animationArguments] is the optional animation
  /// arguments for the slide animation.
  static KeynoteAgendaSlide variantOne({
    required String titleText,
    required String subTitleText,
    Widget? footerWidget,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteAgendaSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitleSmall(),
        titleAlignment: Alignment.bottomCenter,
        subtitleAlignment: Alignment.topCenter,
        footerWidget: footerWidget,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );

  /// Constructs a `KeynoteAgendaSlide` with variant two configuration.
  ///
  /// [titleText] is the text for the title.
  ///
  /// [subTitleText] is the text for the subtitle.
  ///
  /// [footerWidget] is an optional widget for the slide footer.
  ///
  /// [animationIndex] is the optional index at
  /// which the animation should start.
  ///
  /// [animationArguments] is the optional animatio
  /// arguments for the slide animation.
  static KeynoteAgendaSlide variantTwo({
    required String titleText,
    required String subTitleText,
    Widget? footerWidget,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteAgendaSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitle(),
        titleAlignment: Alignment.bottomLeft,
        subtitleAlignment: Alignment.topLeft,
        footerWidget: footerWidget,
        padding: allPadding48,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );
}
