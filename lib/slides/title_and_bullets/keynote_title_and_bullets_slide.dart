import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

/// A widget that recreates the title and bullets slide from Keynote.
class KeynoteTitleAndBulletsSlide extends StatelessWidget {
  /// Constructs a KeynoteAgendaSlide widget.
  ///
  /// The [titleText] parameter is required and specifies
  /// the text for the title of the slide.
  ///
  /// The [subTitleText] parameter can be provided to
  /// add a subtitle to the slide.
  ///
  /// The [bulletPoints] parameter is an optional list of strings
  /// representing the bullet points for the slide.
  ///
  /// The [bullets] parameter allows you to specify the type of bullets
  /// to use for the bullet points.
  ///
  /// The [titleStyle] and [subtitleStyle] parameters allow you to
  /// customize the text style for the title and subtitle respectively.
  ///
  /// The [bulletTextStyle] parameter allows you to customize
  /// the text style for the bullet points.
  ///
  /// The [titleAlignment] and [subtitleAlignment] parameters specify the
  /// alignment of the title and subtitle within their respective sections.
  ///
  /// The [bulletPointsAlignment] parameter specifies the alignment
  /// of the bullet points within the slide.
  ///
  /// The [bulletTextAlignment] parameter specifies the alignment
  /// of the text within each bullet point.
  ///
  /// The [titleSubTitleSpacing] and [subtitleBulletTextSpacing] parameters
  /// allow you to provide custom spacing widgets between the title/subtitle
  /// and subtitle/bullet points respectively.
  ///
  /// The [bulletPointsPadding] parameter allows you to add
  /// padding around the bullet points.
  ///
  /// The [padding] parameter allows you to specify
  /// the padding for the entire slide.
  ///
  /// The [headerFlexUnits], [bodyFlexUnits], and [footerFlexUnits] parameters
  /// determine the flex units for the header, body,
  /// and footer sections respectively.
  ///
  /// The [titleWidgetReplacement], [subtitleWidgetReplacement],
  /// and [bulletPointsWidgetReplacement]
  /// parameters allow you to replace the default widgets for
  /// the title, subtitle, and bullet points with custom widgets.
  ///
  /// The [animationIndex] parameter specifies the index of
  /// the animation for the slide.
  ///
  /// The [animationArguments] parameter allows you to
  /// provide custom animation arguments for the slide.
  const KeynoteTitleAndBulletsSlide({
    required this.titleText,
    this.subTitleText,
    this.bulletPoints,
    this.bulletTextStyle,
    this.bullets,
    this.titleStyle,
    this.subtitleStyle,
    this.bulletPointsAlignment,
    this.bulletTextAlignment,
    this.titleAlignment,
    this.subtitleAlignment,
    this.titleSubTitleSpacing,
    this.subtitleBulletTextSpacing,
    this.bulletPointsPadding,
    this.padding,
    this.headerFlexUnits,
    this.bodyFlexUnits,
    this.footerFlexUnits,
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
    this.bulletPointsWidgetReplacement,
    this.animationIndex,
    this.animationArguments,
    super.key,
  });

  /// The text for the title of the slide.
  final String titleText;

  /// The text for the subtitle of the slide.
  final String? subTitleText;

  /// The list of bullet points for the slide.
  final List<String>? bulletPoints;

  /// The style for the bullet points text.
  final TextStyle? bulletTextStyle;

  /// The type of bullets to use for the bullet points.
  final ListBullets? bullets;

  /// The style for the title text.
  final TextStyle? titleStyle;

  /// The style for the subtitle text.
  final TextStyle? subtitleStyle;

  /// The alignment of the bullet points.
  final Alignment? bulletPointsAlignment;

  /// The alignment of the bullet text.
  final TextAlign? bulletTextAlignment;

  /// The alignment of the title.
  final Alignment? titleAlignment;

  /// The alignment of the subtitle.
  final Alignment? subtitleAlignment;

  /// The widget to use for spacing between the title and subtitle.
  final Widget? titleSubTitleSpacing;

  /// The widget to use for spacing between the subtitle and bullet points.
  final Widget? subtitleBulletTextSpacing;

  /// The padding for the bullet points.
  final EdgeInsets? bulletPointsPadding;

  /// The padding for the slide.
  final EdgeInsets? padding;

  /// The number of flex units for the header section.
  final int? headerFlexUnits;

  /// The number of flex units for the body section.
  final int? bodyFlexUnits;

  /// The number of flex units for the footer section.
  final int? footerFlexUnits;

  /// The widget to replace the title text.
  final Widget? titleWidgetReplacement;

  /// The widget to replace the subtitle text.
  final Widget? subtitleWidgetReplacement;

  /// The widget to replace the bullet points.
  final Widget? bulletPointsWidgetReplacement;

  /// The index of the animation for the slide.
  final int? animationIndex;

  /// The arguments for the animation.
  final AnimationArguments? animationArguments;

  /// Calculates the adjusted animation index for bullet points.
  int getAnimationIndices() {
    if (animationIndex != null) {
      return (animationIndex ?? 0) - 2;
    }

    return 2;
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? allPadding48,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LayoutHeader(
              AnimatableWrapper(
                titleWidgetReplacement ??
                    Align(
                      alignment: titleAlignment ?? Alignment.bottomCenter,
                      child: Text(
                        titleText,
                        style: titleStyle,
                      ),
                    ),
                indexToShowAt: 0,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
              flexUnits: headerFlexUnits ?? 2,
            ),
            titleSubTitleSpacing ?? const SizedBox.shrink(),
            LayoutBody(
              AnimatableWrapper(
                subtitleWidgetReplacement ??
                    Align(
                      alignment: subtitleAlignment ?? Alignment.topCenter,
                      child: Text(
                        subTitleText ?? '',
                        style: subtitleStyle,
                      ),
                    ),
                indexToShowAt: 1,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
              flexUnits: bodyFlexUnits ?? 1,
            ),
            subtitleBulletTextSpacing ?? verticalMargin32,
            LayoutFooter(
              AnimatableWrapper(
                bulletPointsWidgetReplacement ??
                    Align(
                      alignment:
                          bulletPointsAlignment ?? Alignment.bottomCenter,
                      child: ListText(
                        texts: bulletPoints ?? [],
                        textAlign: bulletTextAlignment ?? TextAlign.left,
                        bullet: bullets ?? ListBullets.circle,
                        style: bulletTextStyle,
                        padding: bulletPointsPadding,
                        animationArguments: animationArguments,
                        animationIndex: animationIndex != null
                            ? getAnimationIndices()
                            : null,
                      ),
                    ),
                indexToShowAt: 2,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
              flexUnits: footerFlexUnits ?? 6,
            ),
          ],
        ),
      );
}
