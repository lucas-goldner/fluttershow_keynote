import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_keynote/slides/title_and_photo_alt/keynote_title_and_photo_alt_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class KeynoteTitleAndPhotoAltSlideVariants {
  static KeynoteTitleAndPhotoAltSlide variantOne({
    required String title,
    required String subtitle,
    required Widget image,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleAndPhotoAltSlide(
        image: image,
        title: title,
        subtitle: subtitle,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitle(),
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );

  static KeynoteTitleAndPhotoAltSlide variantTwo({
    required String title,
    required String subtitle,
    required Widget image,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleAndPhotoAltSlide(
        image: image,
        title: title,
        subtitle: subtitle,
        titleAlignment: Alignment.bottomLeft,
        subtitleAlignment: Alignment.topLeft,
        padding: allPadding48,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitle(),
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );
}
