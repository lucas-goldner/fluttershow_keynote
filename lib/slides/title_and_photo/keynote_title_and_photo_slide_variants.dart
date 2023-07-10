import 'package:flutter/cupertino.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';
import 'package:fluttershow_keynote/slides/title_and_photo/keynote_title_and_photo_slide.dart';

class KeynoteTitleAndPhotoSlideVariants {
  static KeynoteTitleAndPhotoSlide variantOne({
    required String titleText,
    required Image image,
    required String subTitleText,
    required String footerText,
    required Gradient gradient,
    required TextStyle titleStyle,
    required TextStyle subtitleStyle,
    required TextStyle footerStyle,
  }) =>
      KeynoteTitleAndPhotoSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        footerText: footerText,
        titleGradient: gradient,
        titleStyle: titleStyle,
        subtitleStyle: subtitleStyle,
        footerStyle: footerStyle,
        titleAlignment: Alignment.bottomCenter,
        subtitleAlignment: Alignment.topCenter,
        footerAlignment: Alignment.bottomCenter,
        image: image,
        variant: Variants.variantOne,
      );

  static KeynoteTitleAndPhotoSlide variantTwo({
    required String titleText,
    required String subTitleText,
    required String footerText,
    required TextStyle titleStyle,
    required TextStyle subtitleStyle,
    required TextStyle footerStyle,
    required Image image,
  }) =>
      KeynoteTitleAndPhotoSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        footerText: footerText,
        titleStyle: titleStyle,
        subtitleStyle: subtitleStyle,
        footerStyle: footerStyle,
        titleAlignment: Alignment.bottomLeft,
        subtitleAlignment: Alignment.topLeft,
        footerAlignment: Alignment.topLeft,
        image: image,
        variant: Variants.variantTwo,
      );
}
