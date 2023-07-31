import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_keynote/slides/title_and_photo_alt/keynote_title_and_photo_alt_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// Contains predefined variants for the [KeynoteTitleAndPhotoAltSlide].
class KeynoteTitleAndPhotoAltSlideVariants {
  /// Creates a variant of the [KeynoteTitleAndPhotoAltSlide]
  /// with a specific configuration.
  ///
  /// The [variantOne] variant displays a title, subtitle, and an image.
  ///
  /// The [titleText] is the main title displayed on the slide.
  ///
  /// The [subTitleText] is an subtitle displayed below the title.
  ///
  /// The [image] is the main image displayed on the slide.
  ///
  /// The [titleStyle] is the style for the title text.
  ///
  /// The [subtitleStyle] is the style for the subtitle text.
  ///
  /// The [titleAlignment] is the alignment of the title within the slide.
  ///
  /// The [subtitleAlignment] is the alignment of the subtitle within the slide.
  ///
  /// The [titleTextAlignment] is the text alignment of
  /// the title within the slide.
  ///
  /// The [subtitleTextAlignment] is the text alignment of
  /// the subtitle within the slide.
  ///
  /// The [padding] is the padding around the slide.
  ///
  /// The [titleSubTitleSpacing] is the spacing between the title and subtitle.
  ///
  /// The [titleWidgetReplacement] is a custom widget that
  /// replaces the default title widget.
  ///
  /// The [subtitleWidgetReplacement] is a custom widget that
  /// replaces the default subtitle widget.
  ///
  /// The [imageWidgetReplacement] is a custom widget that
  /// replaces the default image widget.
  ///
  /// The [animationIndex] determines the order of appearance
  /// for animated elements.
  ///
  /// The [animationArguments] provides additional configuration
  /// for the animation.
  ///
  /// Returns an instance of the [KeynoteTitleAndPhotoAltSlide]
  /// with the specified variant.
  static KeynoteTitleAndPhotoAltSlide variantOne({
    required String titleText,
    required String subTitleText,
    required Widget image,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    Alignment? titleAlignment,
    Alignment? subtitleAlignment,
    TextAlign? titleTextAlignment,
    TextAlign? subtitleTextAlignment,
    EdgeInsets? padding,
    Widget? titleSubTitleSpacing,
    Widget? titleWidgetReplacement,
    Widget? subtitleWidgetReplacement,
    Widget? imageWidgetReplacement,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) {
    return KeynoteTitleAndPhotoAltSlide(
      image: image,
      titleText: titleText,
      subTitleText: subTitleText,
      titleStyle: titleStyle ?? KeynoteTextstyles.titleSmall(),
      subtitleStyle: subtitleStyle ?? KeynoteTextstyles.subtitle(),
      titleAlignment: titleAlignment,
      subtitleAlignment: subtitleAlignment,
      titleTextAlignment: titleTextAlignment,
      subtitleTextAlignment: subtitleTextAlignment,
      padding: padding,
      titleSubTitleSpacing: titleSubTitleSpacing,
      titleWidgetReplacement: titleWidgetReplacement,
      subtitleWidgetReplacement: subtitleWidgetReplacement,
      imageWidgetReplacement: imageWidgetReplacement,
      animationIndex: animationIndex,
      animationArguments: animationArguments,
    );
  }

  /// Creates another variant of the [KeynoteTitleAndPhotoAltSlide]
  /// with a different configuration.
  ///
  /// The [variantTwo] variant also displays a title, subtitle, and an image.
  ///
  /// The [titleText] is the main title displayed on the slide.
  ///
  /// The [subTitleText] is a subtitle displayed below the title.
  ///
  /// The [image] is the main image displayed on the slide.
  ///
  /// The [animationIndex] determines the order of
  /// appearance for animated elements.
  ///
  /// The [animationArguments] provides additional
  /// configuration for the animation.
  ///
  /// The [titleStyle] is the style for the title text.
  ///
  /// The [subtitleStyle] is the style for the subtitle text.
  ///
  /// The [titleAlignment] is the alignment of the title within the slide.
  ///
  /// The [subtitleAlignment] is the alignment of the subtitle within the slide.
  ///
  /// The [titleTextAlignment] is the text alignment of
  /// the title within the slide.
  ///
  /// The [subtitleTextAlignment] is the text alignment of
  /// the subtitle within the slide.
  ///
  /// The [padding] is the padding around the slide.
  ///
  /// The [titleSubTitleSpacing] is the spacing between the title and subtitle.
  ///
  /// The [titleWidgetReplacement] is a custom widget that
  /// replaces the default title widget.
  ///
  /// The [subtitleWidgetReplacement] is a custom widget that
  /// replaces the default subtitle widget.
  ///
  /// The [imageWidgetReplacement] is a custom widget that
  /// replaces the default image widget.
  ///
  /// Returns an instance of the [KeynoteTitleAndPhotoAltSlide]
  /// with the specified variant.
  static KeynoteTitleAndPhotoAltSlide variantTwo({
    required String titleText,
    required String subTitleText,
    required Widget image,
    int? animationIndex,
    AnimationArguments? animationArguments,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    Alignment? titleAlignment,
    Alignment? subtitleAlignment,
    TextAlign? titleTextAlignment,
    TextAlign? subtitleTextAlignment,
    EdgeInsets? padding,
    Widget? titleSubTitleSpacing,
    Widget? titleWidgetReplacement,
    Widget? subtitleWidgetReplacement,
    Widget? imageWidgetReplacement,
  }) {
    return KeynoteTitleAndPhotoAltSlide(
      image: image,
      titleText: titleText,
      subTitleText: subTitleText,
      titleStyle: titleStyle ?? KeynoteTextstyles.titleSmall(),
      subtitleStyle: subtitleStyle ?? KeynoteTextstyles.subtitle(),
      titleAlignment: titleAlignment ?? Alignment.bottomLeft,
      subtitleAlignment: subtitleAlignment ?? Alignment.topLeft,
      titleTextAlignment: titleTextAlignment,
      subtitleTextAlignment: subtitleTextAlignment,
      padding: padding,
      titleSubTitleSpacing: titleSubTitleSpacing,
      titleWidgetReplacement: titleWidgetReplacement,
      subtitleWidgetReplacement: subtitleWidgetReplacement,
      imageWidgetReplacement: imageWidgetReplacement,
      animationIndex: animationIndex,
      animationArguments: animationArguments,
    );
  }
}
