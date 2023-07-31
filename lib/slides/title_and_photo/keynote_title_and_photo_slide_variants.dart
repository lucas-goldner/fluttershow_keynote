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
  /// The [titleGradient] parameter specifies the gradient
  /// for the title of the slide.
  ///
  /// The [titleStyle] parameter specifies the style for the title text.
  ///
  /// The [subtitleStyle] parameter specifies the style for the subtitle text.
  ///
  /// The [headingStyle] parameter specifies the style for the heading text.
  ///
  /// The [titleAlignment] parameter specifies
  /// the alignment of the title widget.
  ///
  /// The [subtitleAlignment] parameter specifies
  /// the alignment of the subtitle widget.
  ///
  /// The [headingAlignment] parameter specifies
  /// the alignment of the heading widget.
  ///
  /// The [titleTextAlignment] parameter specifies
  /// the text alignment of the title.
  ///
  /// The [subtitleTextAlignment] parameter specifies
  /// the text alignment of the subtitle.
  ///
  /// The [headingTextAlignment] parameter specifies
  /// the text alignment of the heading.
  ///
  /// The [titleSubTitleSpacing] parameter is the widget to use for spacing
  /// between the title and subtitle.
  ///
  /// The [headingBottomSpacing] parameter is the widget to use for spacing
  /// at the bottom of the heading.
  ///
  /// The [padding] parameter specifies the padding around the slide.
  ///
  /// The [headerFlexUnits] parameter specifies the number of flex units
  /// for the header section.
  ///
  /// The [bodyFlexUnits] parameter specifies the number of flex units
  /// for the body section.
  ///
  /// The [headingFlexUnits] parameter specifies the number of flex units
  /// for the heading section.
  ///
  /// The [titleWidgetReplacement] parameter is the widget to
  /// replace the title text.
  ///
  /// The [subtitleWidgetReplacement] parameter is the widget
  /// to replace the subtitle text.
  ///
  /// The [headingWidgetReplacement] parameter is the widget
  /// to replace the heading text.
  ///
  /// The [imageWidgetReplacement] parameter is the widget to replace the image.
  ///
  /// The [animationIndex] parameter specifies the index
  /// of the animation for the slide.
  ///
  /// The [animationArguments] parameter allows you to provide custom animation
  /// arguments for the slide.
  static KeynoteTitleAndPhotoSlide variantOne({
    required String titleText,
    required Widget image,
    required String subTitleText,
    required String headingText,
    required Gradient titleGradient,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    TextStyle? headingStyle,
    Alignment? titleAlignment,
    Alignment? subtitleAlignment,
    Alignment? headingAlignment,
    TextAlign? titleTextAlignment,
    TextAlign? subtitleTextAlignment,
    TextAlign? headingTextAlignment,
    Widget? titleSubTitleSpacing,
    Widget? headingBottomSpacing,
    EdgeInsets? padding,
    int? headerFlexUnits,
    int? bodyFlexUnits,
    int? headingFlexUnits,
    Widget? titleWidgetReplacement,
    Widget? subtitleWidgetReplacement,
    Widget? headingWidgetReplacement,
    Widget? imageWidgetReplacement,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleAndPhotoSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        headingText: headingText,
        titleGradient: titleGradient,
        titleStyle: titleStyle ?? KeynoteTextstyles.title(),
        subtitleStyle: subtitleStyle ?? KeynoteTextstyles.subtitle(),
        headingStyle: headingStyle ?? KeynoteTextstyles.heading(),
        titleAlignment: titleAlignment ?? Alignment.bottomCenter,
        subtitleAlignment: subtitleAlignment ?? Alignment.topCenter,
        headingAlignment: headingAlignment ?? Alignment.bottomCenter,
        titleTextAlignment: titleTextAlignment,
        subtitleTextAlignment: subtitleTextAlignment,
        headingTextAlignment: headingTextAlignment,
        titleSubTitleSpacing: titleSubTitleSpacing,
        headingBottomSpacing: headingBottomSpacing,
        padding: padding,
        headerFlexUnits: headerFlexUnits,
        bodyFlexUnits: bodyFlexUnits,
        headingFlexUnits: headingFlexUnits,
        titleWidgetReplacement: titleWidgetReplacement,
        subtitleWidgetReplacement: subtitleWidgetReplacement,
        headingWidgetReplacement: headingWidgetReplacement,
        imageWidgetReplacement: imageWidgetReplacement,
        image: image,
        variant: Variants.one,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );

  /// Creates a variant two of the KeynoteTitleAndPhotoSlide.
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
  /// The [titleStyle] parameter specifies the style for the title text.
  ///
  /// The [subtitleStyle] parameter specifies the style for the subtitle text.
  ///
  /// The [headingStyle] parameter specifies the style for the heading text.
  ///
  /// The [titleAlignment] parameter specifies
  /// the alignment of the title widget.
  ///
  /// The [subtitleAlignment] parameter specifies
  /// the alignment of the subtitle widget.
  ///
  /// The [headingAlignment] parameter specifies
  /// the alignment of the heading widget.
  ///
  /// The [titleTextAlignment] parameter specifies
  /// the text alignment of the title.
  ///
  /// The [subtitleTextAlignment] parameter specifies
  /// the text alignment of the subtitle.
  ///
  /// The [headingTextAlignment] parameter specifies
  /// the text alignment of the heading.
  ///
  /// The [titleSubTitleSpacing] parameter is the widget to use for spacing
  /// between the title and subtitle.
  ///
  /// The [headingBottomSpacing] parameter is the widget to use for spacing
  /// at the bottom of the heading.
  ///
  /// The [padding] parameter specifies the padding around the slide.
  ///
  /// The [headerFlexUnits] parameter specifies the number of flex units
  /// for the header section.
  ///
  /// The [bodyFlexUnits] parameter specifies the number of flex units
  /// for the body section.
  ///
  /// The [headingFlexUnits] parameter specifies the number of flex units
  /// for the heading section.
  ///
  /// The [titleWidgetReplacement] parameter is the widget to
  /// replace the title text.
  ///
  /// The [subtitleWidgetReplacement] parameter is the widget
  /// to replace the subtitle text.
  ///
  /// The [headingWidgetReplacement] parameter is the widget
  /// to replace the heading text.
  ///
  /// The [imageWidgetReplacement] parameter is the widget to replace the image.
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
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    TextStyle? headingStyle,
    Alignment? titleAlignment,
    Alignment? subtitleAlignment,
    Alignment? headingAlignment,
    TextAlign? titleTextAlignment,
    TextAlign? subtitleTextAlignment,
    TextAlign? headingTextAlignment,
    Widget? titleSubTitleSpacing,
    Widget? headingBottomSpacing,
    EdgeInsets? padding,
    int? headerFlexUnits,
    int? bodyFlexUnits,
    int? headingFlexUnits,
    Widget? titleWidgetReplacement,
    Widget? subtitleWidgetReplacement,
    Widget? headingWidgetReplacement,
    Widget? imageWidgetReplacement,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleAndPhotoSlide(
        titleText: titleText,
        subTitleText: subTitleText,
        headingText: headingText,
        titleStyle: titleStyle ?? KeynoteTextstyles.title(),
        subtitleStyle: subtitleStyle ?? KeynoteTextstyles.subtitle(),
        headingStyle: headingStyle ?? KeynoteTextstyles.heading(),
        titleAlignment: titleAlignment ?? Alignment.bottomLeft,
        subtitleAlignment: subtitleAlignment ?? Alignment.topLeft,
        headingAlignment: headingAlignment ?? Alignment.topLeft,
        titleTextAlignment: titleTextAlignment,
        subtitleTextAlignment: subtitleTextAlignment,
        headingTextAlignment: headingTextAlignment,
        titleSubTitleSpacing: titleSubTitleSpacing,
        headingBottomSpacing: headingBottomSpacing,
        padding: padding,
        headerFlexUnits: headerFlexUnits,
        bodyFlexUnits: bodyFlexUnits,
        headingFlexUnits: headingFlexUnits,
        titleWidgetReplacement: titleWidgetReplacement,
        subtitleWidgetReplacement: subtitleWidgetReplacement,
        headingWidgetReplacement: headingWidgetReplacement,
        imageWidgetReplacement: imageWidgetReplacement,
        image: image,
        variant: Variants.two,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );
}
