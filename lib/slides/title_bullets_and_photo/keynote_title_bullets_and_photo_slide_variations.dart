import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/widgets/spacings/paddings.dart';
import 'package:fluttershow_keynote/slides/title_bullets_and_photo/keynote_title_bullets_and_photo_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class KeynoteTitleBulletAndPhotoSlideVariations {
  static KeynoteTitleBulletAndPhotoSlide variantOne({
    required String title,
    required String subtitle,
    required Widget image,
    required List<String> bulletPoints,
  }) =>
      KeynoteTitleBulletAndPhotoSlide(
        image: image,
        title: title,
        subtitle: subtitle,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitleSmall(),
        bulletTextStyle: KeynoteTextstyles.body(),
        bulletPoints: bulletPoints,
        titleAlignment: Alignment.bottomCenter,
        subtitleAlignment: Alignment.topCenter,
        bulletPointsPadding: horizontalPadding48,
        padding: emptyPadding,
      );

  static KeynoteTitleBulletAndPhotoSlide variantTwo({
    required String title,
    required String subtitle,
    required Widget image,
    required List<String> bulletPoints,
  }) =>
      KeynoteTitleBulletAndPhotoSlide(
        image: image,
        title: title,
        subtitle: subtitle,
        bulletPoints: bulletPoints,
        titleAlignment: Alignment.bottomLeft,
        subtitleAlignment: Alignment.topLeft,
        padding: allPadding48,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitle(),
        bulletTextStyle: KeynoteTextstyles.body(),
      );
}
