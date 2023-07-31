import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/model/enum/list_bullets.dart';
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
  /// The [subTitleText] is a subtitle displayed below the title.
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
  ///
  /// The [titleStyle] is the style for the title text.
  ///
  /// The [subtitleStyle] is the style for the subtitle text.
  ///
  /// The [bullets] is the enum value representing the bullet style.
  ///
  /// The [bulletTextStyle] is the style for the bullet point text.
  ///
  /// The [titleAlignment] is the alignment of the title text within its space.
  ///
  /// The [subtitleAlignment] is the alignment of the subtitle
  /// text within its space.
  ///
  /// The [bulletPointsAlignment] is the alignment of the bullet+
  /// points within their space.
  ///
  /// The [titleTextAlignment] is the text alignment of the title text.
  ///
  /// The [subtitleTextAlignment] is the text alignment of the subtitle text.
  ///
  /// The [bulletTextAlignment] is the text alignment of the bullet text.
  ///
  /// The [padding] is the padding around the entire slide.
  ///
  /// The [bulletPointsPadding] is the padding around the bullet points.
  ///
  /// The [titleSubTitleSpacing] is the spacing between the title and subtitle.
  ///
  /// The [subtitleBulletSpacing] is the spacing between
  /// the subtitle and bullet points.
  ///
  /// The [headerFlexUnits] is the number of flex units for the header section.
  ///
  /// The [bodyFlexUnits] is the number of flex units for the body section.
  ///
  /// The [footerFlexUnits] is the number of flex units for the footer section.
  ///
  /// The [titleWidgetReplacement] is a replacement widget for the title text.
  ///
  /// The [subtitleWidgetReplacement] is a replacement widget
  /// for the subtitle text.
  ///
  /// The [imageWidgetReplacement] is a replacement widget for the image.
  ///
  /// The [bulletPointsWidgetReplacement] is a replacement widget
  /// for the bullet points.
  ///
  /// The [animationIndex] is the index of the slide for animations.
  ///
  /// The [animationArguments] is the configuration for the slide animations.
  static KeynoteTitleBulletAndPhotoSlide variantOne({
    required String titleText,
    required String subTitleText,
    required Widget image,
    required List<String> bulletPoints,
    int? animationIndex,
    AnimationArguments? animationArguments,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    ListBullets? bullets,
    TextStyle? bulletTextStyle,
    Alignment? titleAlignment,
    Alignment? subtitleAlignment,
    Alignment? bulletPointsAlignment,
    TextAlign? titleTextAlignment,
    TextAlign? subtitleTextAlignment,
    TextAlign? bulletTextAlignment,
    EdgeInsets? padding,
    EdgeInsets? bulletPointsPadding,
    Widget? titleSubTitleSpacing,
    Widget? subtitleBulletSpacing,
    int? headerFlexUnits,
    int? bodyFlexUnits,
    int? footerFlexUnits,
    Widget? titleWidgetReplacement,
    Widget? subtitleWidgetReplacement,
    Widget? imageWidgetReplacement,
    Widget? bulletPointsWidgetReplacement,
  }) {
    return KeynoteTitleBulletAndPhotoSlide(
      image: image,
      titleText: titleText,
      subTitleText: subTitleText,
      bulletPoints: bulletPoints,
      titleStyle: titleStyle ?? KeynoteTextstyles.titleSmall(),
      subtitleStyle: subtitleStyle ?? KeynoteTextstyles.subtitleSmall(),
      bullets: bullets,
      bulletTextStyle: bulletTextStyle ?? KeynoteTextstyles.body(),
      titleAlignment: titleAlignment ?? Alignment.bottomCenter,
      subtitleAlignment: subtitleAlignment ?? Alignment.topCenter,
      bulletPointsAlignment: bulletPointsAlignment,
      titleTextAlignment: titleTextAlignment,
      subtitleTextAlignment: subtitleTextAlignment,
      bulletTextAlignment: bulletTextAlignment,
      padding: padding,
      bulletPointsPadding:
          bulletPointsPadding ?? horizontalPadding48 + horizontalPadding48,
      titleSubTitleSpacing: titleSubTitleSpacing,
      subtitleBulletSpacing: subtitleBulletSpacing,
      headerFlexUnits: headerFlexUnits,
      bodyFlexUnits: bodyFlexUnits,
      footerFlexUnits: footerFlexUnits,
      titleWidgetReplacement: titleWidgetReplacement,
      subtitleWidgetReplacement: subtitleWidgetReplacement,
      imageWidgetReplacement: imageWidgetReplacement,
      bulletPointsWidgetReplacement: bulletPointsWidgetReplacement,
      animationIndex: animationIndex,
      animationArguments: animationArguments,
    );
  }

  /// Creates a variant two of [KeynoteTitleBulletAndPhotoSlide].
  ///
  /// The [titleText] is the main title displayed on the slide.
  ///
  /// The [subTitleText] is a subtitle displayed below the title.
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
  ///
  /// The [titleStyle] is the style for the title text.
  ///
  /// The [subtitleStyle] is the style for the subtitle text.
  ///
  /// The [bullets] is the enum value representing the bullet style.
  ///
  /// The [bulletTextStyle] is the style for the bullet point text.
  ///
  /// The [titleAlignment] is the alignment of the title text within its space.
  ///
  /// The [subtitleAlignment] is the alignment of
  /// the subtitle textwithin its space.
  ///
  /// The [bulletPointsAlignment] is the alignment of
  /// the bullet points within their space.
  ///
  /// The [titleTextAlignment] is the text alignment of the title text.
  ///
  /// The [subtitleTextAlignment] is the text alignment of the subtitle text.
  ///
  /// The [bulletTextAlignment] is the text alignment of the bullet text.
  ///
  /// The [padding] is the padding around the entire slide.
  ///
  /// The [bulletPointsPadding] is the padding around the bullet points.
  ///
  /// The [titleSubTitleSpacing] is the spacing between the title and subtitle.
  ///
  /// The [subtitleBulletSpacing] is the spacing between
  /// the subtitle and bullet points.
  ///
  /// The [headerFlexUnits] is the number of flex units for the header section.
  ///
  /// The [bodyFlexUnits] is the number of flex units for the body section.
  ///
  /// The [footerFlexUnits] is the number of flex units for the footer section.
  ///
  /// The [titleWidgetReplacement] is a replacement widget for the title text.
  ///
  /// The [subtitleWidgetReplacement] is a replacement widget
  /// for the subtitle text.
  ///
  /// The [imageWidgetReplacement] is a replacement widget for the image.
  ///
  /// The [bulletPointsWidgetReplacement] is a replacement widget
  /// for the bullet points.
  ///
  /// The [animationIndex] is the index of the slide for animations.
  ///
  /// The [animationArguments] is the configuration for the slide animations.
  static KeynoteTitleBulletAndPhotoSlide variantTwo({
    required String titleText,
    required String subTitleText,
    required Widget image,
    required List<String> bulletPoints,
    int? animationIndex,
    AnimationArguments? animationArguments,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    ListBullets? bullets,
    TextStyle? bulletTextStyle,
    Alignment? titleAlignment,
    Alignment? subtitleAlignment,
    Alignment? bulletPointsAlignment,
    TextAlign? titleTextAlignment,
    TextAlign? subtitleTextAlignment,
    TextAlign? bulletTextAlignment,
    EdgeInsets? padding,
    EdgeInsets? bulletPointsPadding,
    Widget? titleSubTitleSpacing,
    Widget? subtitleBulletSpacing,
    int? headerFlexUnits,
    int? bodyFlexUnits,
    int? footerFlexUnits,
    Widget? titleWidgetReplacement,
    Widget? subtitleWidgetReplacement,
    Widget? imageWidgetReplacement,
    Widget? bulletPointsWidgetReplacement,
  }) {
    return KeynoteTitleBulletAndPhotoSlide(
      image: image,
      titleText: titleText,
      subTitleText: subTitleText,
      bulletPoints: bulletPoints,
      titleAlignment: titleAlignment ?? Alignment.bottomLeft,
      subtitleAlignment: subtitleAlignment ?? Alignment.topLeft,
      padding: padding ?? allPadding48,
      titleStyle: titleStyle ?? KeynoteTextstyles.titleSmall(),
      subtitleStyle: subtitleStyle ?? KeynoteTextstyles.subtitle(),
      bullets: bullets,
      bulletTextStyle: bulletTextStyle ?? KeynoteTextstyles.body(),
      bulletPointsPadding: bulletPointsPadding,
      titleSubTitleSpacing: titleSubTitleSpacing,
      subtitleBulletSpacing: subtitleBulletSpacing,
      headerFlexUnits: headerFlexUnits,
      bodyFlexUnits: bodyFlexUnits,
      footerFlexUnits: footerFlexUnits,
      titleWidgetReplacement: titleWidgetReplacement,
      subtitleWidgetReplacement: subtitleWidgetReplacement,
      imageWidgetReplacement: imageWidgetReplacement,
      bulletPointsWidgetReplacement: bulletPointsWidgetReplacement,
      animationIndex: animationIndex,
      animationArguments: animationArguments,
    );
  }
}
