import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_keynote/slides/title_only/keynote_title_only_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class KeynoteTitleOnlySlideVariations {
  static KeynoteTitleOnlySlide variantOne({
    required String titleText,
    required String subTitleText,
  }) =>
      KeynoteTitleOnlySlide(
        titleText: titleText,
        subTitleText: subTitleText,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitleSmall(),
        titleAlignment: Alignment.bottomCenter,
        subtitleAlignment: Alignment.topCenter,
      );

  static KeynoteTitleOnlySlide variantTwo({
    required String titleText,
    required String subTitleText,
  }) =>
      KeynoteTitleOnlySlide(
        titleText: titleText,
        subTitleText: subTitleText,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitleSmall(),
        titleAlignment: Alignment.bottomLeft,
        subtitleAlignment: Alignment.topLeft,
        padding: allPadding48,
      );
}
