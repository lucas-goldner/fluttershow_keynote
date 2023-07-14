import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_keynote/slides/title_and_photo_alt/keynote_title_and_photo_alt_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// Contains predefined variants for the [KeynoteTitleAndPhotoAltSlide].
class KeynoteTitleAndPhotoAltSlideVariants {
  /// Creates a variant of the KeynoteTitleAndPhotoAltSlide
  /// with a specific configuration.
  ///
  /// The [variantOne] variant displays a title, subtitle, and an image.
  ///
  /// The [titleText] is the main title displayed on the slide.
  ///
  /// The [subTitleText] is an optional subtitle displayed below the title.
  ///
  /// The [image] is the main image displayed on the slide.
  ///
  /// The [animationIndex] determines the order of appearance
  /// for animated elements.
  ///
  /// The [animationArguments] provides additional configuration
  /// for the animation.
  ///
  /// Returns an instance of the [KeynoteTitleAndPhotoAltSlide] with
  /// the specified variant.
  static KeynoteTitleAndPhotoAltSlide variantOne({
    required String titleText,
    required String subTitleText,
    required Widget image,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleAndPhotoAltSlide(
        image: image,
        titleText: titleText,
        subTitleText: subTitleText,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitle(),
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );

  /// Creates another variant of the [KeynoteTitleAndPhotoAltSlide]
  /// with a different configuration.
  ///
  /// The [variantTwo] variant also displays a title, subtitle, and an image.
  ///
  /// The [titleText] is the main title displayed on the slide.
  ///
  /// The [subTitleText] is an optional subtitle displayed below the title.
  ///
  /// The [image] is the main image displayed on the slide.
  ///
  /// The [animationIndex] determines the order of
  /// appearance for animated elements.
  ///
  /// The [animationArguments] provides additional
  /// configuration for the animation.
  ///
  /// Returns an instance of the [KeynoteTitleAndPhotoAltSlide]
  /// with the specified variant.
  static KeynoteTitleAndPhotoAltSlide variantTwo({
    required String titleText,
    required String subTitleText,
    required Widget image,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleAndPhotoAltSlide(
        image: image,
        titleText: titleText,
        subTitleText: subTitleText,
        titleAlignment: Alignment.bottomLeft,
        subtitleAlignment: Alignment.topLeft,
        padding: allPadding48,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitle(),
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );
}
