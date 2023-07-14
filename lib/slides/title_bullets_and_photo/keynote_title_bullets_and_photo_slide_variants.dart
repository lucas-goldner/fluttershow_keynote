import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_keynote/slides/title_bullets_and_photo/keynote_title_bullets_and_photo_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// Provides factory methods for creating different variants of
/// [KeynoteTitleBulletAndPhotoSlide].
class KeynoteTitleBulletAndPhotoSlideVariants {
  /// Creates a variant one of [KeynoteTitleBulletAndPhotoSlide].
  ///
  /// The [titleText] is the main title displayed on the slide.
  ///
  /// The [subTitleText] is an optional subtitle displayed below the title.
  ///
  /// The [image] is the main image displayed on the slide.
  ///
  /// The [bulletPoints] are the bullet points displayed on the slide.
  ///
  /// The [animationIndex] determines the order of appearance
  /// for animated elements.
  ///
  /// The [animationArguments] provides additional configuration
  /// for the animation.
  static KeynoteTitleBulletAndPhotoSlide variantOne({
    required String titleText,
    required String subTitleText,
    required Widget image,
    required List<String> bulletPoints,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleBulletAndPhotoSlide(
        image: image,
        titleText: titleText,
        subTitleText: subTitleText,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitleSmall(),
        bulletTextStyle: KeynoteTextstyles.body(),
        bulletPoints: bulletPoints,
        bulletPointsPadding: horizontalPadding48 + horizontalPadding48,
        titleAlignment: Alignment.bottomCenter,
        subtitleAlignment: Alignment.topCenter,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );

  /// Creates a variant two of [KeynoteTitleBulletAndPhotoSlide].
  ///
  /// The [titleText] is the main title displayed on the slide.
  ///
  /// The [subTitleText] is an optional subtitle displayed below the title.
  ///
  /// The [image] is the main image displayed on the slide.
  ///
  /// The [bulletPoints] are the bullet points displayed on the slide.
  ///
  /// The [animationIndex] determines the order of appearance
  /// for animated elements.
  ///
  /// The [animationArguments] provides additional configuration
  /// for the animation.
  static KeynoteTitleBulletAndPhotoSlide variantTwo({
    required String titleText,
    required String subTitleText,
    required Widget image,
    required List<String> bulletPoints,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleBulletAndPhotoSlide(
        image: image,
        titleText: titleText,
        subTitleText: subTitleText,
        bulletPoints: bulletPoints,
        titleAlignment: Alignment.bottomLeft,
        subtitleAlignment: Alignment.topLeft,
        padding: allPadding48,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitle(),
        bulletTextStyle: KeynoteTextstyles.body(),
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );
}
