import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';
import 'package:fluttershow_keynote/slides/title_and_photo/keynote_title_and_photo_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// A collection of static methods to create different variants
/// of the [KeynoteTitleAndPhotoSlide].
class KeynoteTitleAndPhotoSlideVariants {
  /// Creates a variant one of the [KeynoteTitleAndPhotoSlide].
  ///
  /// The [titleText] parameter is required and
  /// specifies the text for the title of the slide.
  ///
  /// The [image] parameter is required and specifies
  /// the image widget for the slide.
  ///
  /// The [subTitleText] parameter is required and specifies
  /// the text for the subtitle of the slide.
  ///
  /// The [headingText] parameter is required and specifies
  /// the text for the heading of the slide.
  ///
  /// The [gradient] parameter specifies the gradient
  /// for the title of the slide.
  ///
  /// The [animationIndex] parameter specifies the index
  /// of the animation for the slide.
  ///
  /// The [animationArguments] parameter allows you to
  /// provide custom animation arguments for the slide.
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

  /// Creates a variant two of the KeynoteTitleAndPhotoSlide.
  ///
  /// The [titleText] parameter is required and specifies
  /// the text for the title of the slide.
  ///
  /// The [subTitleText] parameter is required and
  /// specifies the text for the subtitle of the slide.
  ///
  /// The [headingText] parameter is required and
  /// specifies the text for the heading of the slide.
  ///
  /// The [image] parameter is required and
  /// specifies the image widget for the slide.
  ///
  /// The [animationIndex] parameter specifies
  /// the index of the animation for the slide.
  ///
  /// The [animationArguments] parameter allows
  /// you to provide custom animation arguments for the slide.
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
