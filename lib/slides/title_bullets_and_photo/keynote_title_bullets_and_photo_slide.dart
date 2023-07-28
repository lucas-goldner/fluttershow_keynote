import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

/// A widget that recreates the title bullet and photo slide from Keynote.
/// Consists of a title and subtitle, image and bulletpoints.
class KeynoteTitleBulletAndPhotoSlide extends StatelessWidget {
  /// Creates a [KeynoteTitleBulletAndPhotoSlide].
  ///
  /// The [titleText] is the main title displayed on the slide.
  ///
  /// The [subTitleText] is an subtitle displayed below the title.
  ///
  /// The [image] is the main image displayed on the slide.
  ///
  /// The [bulletPoints] is a list of strings representing the
  /// bullet points displayed on the slide.
  ///
  /// The [bullets] specifies the style of the bullet points. If not provided,
  /// the default style is [ListBullets.circle].
  ///
  /// The [titleStyle] is the style for the title text. If not provided,
  /// the default style is used.
  ///
  /// The [subtitleStyle] is the style for the subtitle text. If not provided,
  /// the default style is used.
  ///
  /// The [bulletTextStyle] is the style for the bullet point text.
  ///
  /// The [titleAlignment] is the alignment of the title text within its space.
  ///
  /// The [subtitleAlignment] is the alignment of the subtitle text within
  /// its space.
  ///
  /// The [bulletPointsAlignment] is the alignment of the bullet points
  /// within their space.
  ///
  /// The [titleTextAlignment] is the text alignment of title text.
  ///
  /// The [subtitleTextAlignment] is the text alignment of subtitle text.
  ///
  /// The [bulletTextAlignment] is the alignment of the bullet text within each
  /// bullet point.
  ///
  /// The [bulletPointsPadding] is the padding around the bullet points.
  ///
  /// The [padding] is the padding around the entire slide.
  ///
  /// The [titleSubTitleSpacing] is the spacing between the title and subtitle.
  ///
  /// The [subtitleBulletSpacing] is the spacing between the subtitle and
  /// bullet points.
  ///
  /// The [headerFlexUnits] is the number of flex units for the header section.
  /// If not provided, the default number of units is used.
  ///
  /// The [bodyFlexUnits] is the number of flex units for the body section.
  /// If not provided, the default number of units is used.
  ///
  /// The [footerFlexUnits] is the number of flex units for the footer section.
  /// If not provided, the default number of units is used.
  ///
  /// The [titleWidgetReplacement] is a replacement widget for the title text.
  /// If provided, it will be used instead of the default text widget.
  ///
  /// The [subtitleWidgetReplacement] is a replacement widget for the
  /// subtitle text. If provided, it will be used instead
  /// of the default text widget.
  ///
  /// The [imageWidgetReplacement] is a replacement widget for the image.
  /// If provided, it will be used instead of the default image widget.
  ///
  /// The [bulletPointsWidgetReplacement] is a replacement widget for the
  /// bulletpoints. If provided, it will be used instead of
  /// the default bullet points widget.
  ///
  /// The [animationIndex] is the index of the slide for animations.
  ///
  /// The [animationArguments] is the configuration for the slide animations.
  const KeynoteTitleBulletAndPhotoSlide({
    required this.titleText,
    required this.subTitleText,
    required this.image,
    required this.bulletPoints,
    this.bullets,
    this.titleStyle,
    this.subtitleStyle,
    this.bulletTextStyle,
    this.titleAlignment,
    this.subtitleAlignment,
    this.bulletPointsAlignment,
    this.titleTextAlignment,
    this.subtitleTextAlignment,
    this.bulletTextAlignment,
    this.bulletPointsPadding,
    this.padding,
    this.titleSubTitleSpacing,
    this.subtitleBulletSpacing,
    this.headerFlexUnits,
    this.bodyFlexUnits,
    this.footerFlexUnits,
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
    this.imageWidgetReplacement,
    this.bulletPointsWidgetReplacement,
    this.animationIndex,
    this.animationArguments,
    super.key,
  });

  /// The main image displayed on the slide.
  final Widget image;

  /// The main title displayed on the slide.
  final String titleText;

  /// An subtitle displayed below the title.
  final String subTitleText;

  /// The bullet points displayed on the slide.
  final List<String> bulletPoints;

  /// The style for the title text.
  final TextStyle? titleStyle;

  /// The style for the subtitle text.
  final TextStyle? subtitleStyle;

  /// The enum value representing the bullet style.
  final ListBullets? bullets;

  /// The style for the bullet point text.
  final TextStyle? bulletTextStyle;

  /// The alignment of the title text within its space.
  final Alignment? titleAlignment;

  /// The alignment of the subtitle text within its space.
  final Alignment? subtitleAlignment;

  /// The alignment of the bullet points within their space.
  final Alignment? bulletPointsAlignment;

  /// The text alignment of the title text.
  final TextAlign? titleTextAlignment;

  /// The text alignment of the subtitle text.
  final TextAlign? subtitleTextAlignment;

  /// The text alignment of the bullet text.
  final TextAlign? bulletTextAlignment;

  /// The padding around the entire slide.
  final EdgeInsets? padding;

  /// The padding around the bullet points.
  final EdgeInsets? bulletPointsPadding;

  /// The spacing between the title and subtitle.
  final Widget? titleSubTitleSpacing;

  /// The spacing between the subtitle and bullet points.
  final Widget? subtitleBulletSpacing;

  /// The number of flex units for the header section.
  final int? headerFlexUnits;

  /// The number of flex units for the body section.
  final int? bodyFlexUnits;

  /// The number of flex units for the footer section.
  final int? footerFlexUnits;

  /// A replacement widget for the title text.
  final Widget? titleWidgetReplacement;

  /// A replacement widget for the subtitle text.
  final Widget? subtitleWidgetReplacement;

  /// A replacement widget for the image.
  final Widget? imageWidgetReplacement;

  /// A replacement widget for the bullet points.
  final Widget? bulletPointsWidgetReplacement;

  /// The index of the slide for animations.
  final int? animationIndex;

  /// The configuration for the slide animations.
  final AnimationArguments? animationArguments;

  /// Calculates the adjusted animation index for bullet points.
  int getAnimationIndices() {
    if (animationIndex != null) {
      return (animationIndex ?? 0) - 3;
    }

    return 3;
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? emptyPadding,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  LayoutHeader(
                    AnimatableWrapper(
                      titleWidgetReplacement ??
                          Align(
                            alignment: titleAlignment ?? Alignment.bottomCenter,
                            child: Text(
                              titleText,
                              style: titleStyle,
                              textAlign: titleTextAlignment,
                            ),
                          ),
                      indexToShowAt: 0,
                      animationIndex: animationIndex,
                      animationArguments: animationArguments,
                    ),
                    flexUnits: 2,
                  ),
                  titleSubTitleSpacing ?? verticalMargin8,
                  LayoutBody(
                    AnimatableWrapper(
                      subtitleWidgetReplacement ??
                          Align(
                            alignment: subtitleAlignment ?? Alignment.topCenter,
                            child: Text(
                              subTitleText,
                              style: subtitleStyle,
                              textAlign: subtitleTextAlignment,
                            ),
                          ),
                      indexToShowAt: 1,
                      animationIndex: animationIndex,
                      animationArguments: animationArguments,
                    ),
                    flexUnits: 1,
                  ),
                  LayoutFooter(
                    AnimatableWrapper(
                      bulletPointsWidgetReplacement ??
                          Align(
                            alignment:
                                bulletPointsAlignment ?? Alignment.topCenter,
                            child: ListText(
                              texts: bulletPoints,
                              textAlign: bulletTextAlignment ?? TextAlign.left,
                              bullet: bullets ?? ListBullets.circle,
                              style: bulletTextStyle,
                              padding: bulletPointsPadding,
                              animationIndex: animationIndex != null
                                  ? getAnimationIndices()
                                  : null,
                              animationArguments: animationArguments,
                            ),
                          ),
                      indexToShowAt: 3,
                      animationIndex: animationIndex,
                      animationArguments: animationArguments,
                    ),
                    flexUnits: footerFlexUnits ?? 5,
                  ),
                ],
              ),
            ),
            Expanded(
              child: AnimatableWrapper(
                imageWidgetReplacement ?? image,
                indexToShowAt: 2,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
            )
          ],
        ),
      );
}
