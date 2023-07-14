import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';
import 'package:fluttershow_keynote/slides/title_and_photo/keynote_title_and_photo_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class KeynoteTitleAndPhotoSlideVariants {
  static KeynoteTitleAndPhotoSlide variantOne({
    required String titleText,
    required Widget image,
    required String subTitleText,
    required String headingText,
    required Gradient gradient,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleAndPhotoSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        headingText: headingText,
        titleGradient: gradient,
        titleStyle: KeynoteTextstyles.title(),
        subtitleStyle: KeynoteTextstyles.subtitle(),
        headingStyle: KeynoteTextstyles.heading(),
        titleAlignment: Alignment.bottomCenter,
        subtitleAlignment: Alignment.topCenter,
        headingAlignment: Alignment.bottomCenter,
        image: image,
        variant: Variants.one,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );

  static KeynoteTitleAndPhotoSlide variantTwo({
    required String titleText,
    required String subTitleText,
    required String headingText,
    required Widget image,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleAndPhotoSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        headingText: headingText,
        titleStyle: KeynoteTextstyles.title(),
        subtitleStyle: KeynoteTextstyles.subtitle(),
        headingStyle: KeynoteTextstyles.heading(),
        titleAlignment: Alignment.bottomLeft,
        subtitleAlignment: Alignment.topLeft,
        headingAlignment: Alignment.topLeft,
        image: image,
        variant: Variants.two,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );
}
