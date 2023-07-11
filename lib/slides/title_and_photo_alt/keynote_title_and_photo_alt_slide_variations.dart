import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/widgets/spacings/paddings.dart';
import 'package:fluttershow_keynote/slides/title_and_photo_alt/keynote_title_and_photo_alt_slide.dart';

class KeynoteTitleAndPhotoAltSlideVariations {
  static KeynoteTitleAndPhotoAltSlide variantOne({
    required String title,
    required String subtitle,
    required Image image,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
  }) =>
      KeynoteTitleAndPhotoAltSlide(
        image: image,
        title: title,
        subtitle: subtitle,
        titleStyle: titleStyle,
        subtitleStyle: subtitleStyle,
      );

  static KeynoteTitleAndPhotoAltSlide variantTwo({
    required String title,
    required String subtitle,
    required Image image,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
  }) =>
      KeynoteTitleAndPhotoAltSlide(
        image: image,
        title: title,
        subtitle: subtitle,
        titleAlignment: Alignment.bottomLeft,
        subtitleAlignment: Alignment.topLeft,
        padding: allPadding48,
        titleStyle: titleStyle,
        subtitleStyle: subtitleStyle,
      );
}