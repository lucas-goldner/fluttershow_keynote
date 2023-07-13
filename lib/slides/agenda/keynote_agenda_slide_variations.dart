import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_keynote/slides/agenda/keynote_agenda_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class KeynoteAgendaSlideVariations {
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
