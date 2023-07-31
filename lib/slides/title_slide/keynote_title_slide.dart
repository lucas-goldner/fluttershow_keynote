import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:fluttershow_keynote/style/keynote_gradients.dart';

/// A widget that recreates the title slide from Keynote.
/// Consists of a title and subtitle and footer.
class KeynoteTitleSlide extends StatelessWidget {
  /// Creates a [KeynoteTitleSlide] with the specified parameters.
  ///
  /// The [titleText] represents the main title of the slide.
  ///
  /// The [subTitleText] represents the subtitle of the slide.
  ///
  /// The [footerText] represents the footer text of the slide.
  ///
  /// The [titleGradient] is an gradient that
  /// can be applied to the title text.
  ///
  /// The [titleStyle] defines the style for the title text.
  ///
  /// The [subtitleStyle] defines the style for the subtitle text.
  ///
  /// The [footerStyle] defines the style for the footer text.
  ///
  /// The [titleAlignment] represents the alignment of
  /// the title text within the slide.
  ///
  /// The [subtitleAlignment] represents the alignment of
  /// the subtitle text within the slide.
  ///
  /// The [footerAlignment] represents the alignment of
  /// the footer text within the slide.
  ///
  /// The [titleTextAlignment] represents the text alignment of
  /// the title text.
  ///
  /// The [subtitleTextAlignment] represents the text alignment of
  /// the subtitle text.
  ///
  /// The [footerTextAlignment] represents the text alignment of
  /// the footer text.
  ///
  /// The [titleSubTitleSpacing] is a widget that provides
  /// spacing between the title and subtitle.
  ///
  /// The [footerBottomSpacing] is a widget that provides
  /// spacing below the footer text.
  ///
  /// The [padding] specifies the padding around the slide content.
  ///
  /// The [headerFlexUnits] represents the flex units for
  /// the header section of the slide.
  ///
  /// The [bodyFlexUnits] represents the flex units for
  /// the body section of the slide.
  ///
  /// The [footerFlexUnits] represents the flex units for
  /// the footer section of the slide.
  ///
  /// The [titleWidgetReplacement] is a widget that can replace
  /// the default title text widget.
  ///
  /// The [subtitleWidgetReplacement] is a widget that can replace
  /// the default subtitle text widget.
  ///
  /// The [footerWidgetReplacement] is a widget that can replace
  /// the default footer text widget.
  ///
  /// The [animationIndex] represents the index of the slide
  /// for animation purposes.
  ///
  /// The [animationArguments] provide additional animation
  /// settings for the slide.
  const KeynoteTitleSlide({
    required this.titleText,
    super.key,
    this.subTitleText,
    this.footerText,
    this.titleStyle,
    this.titleGradient,
    this.subtitleStyle,
    this.footerStyle,
    this.titleAlignment,
    this.subtitleAlignment,
    this.footerAlignment,
    this.titleTextAlignment,
    this.subtitleTextAlignment,
    this.footerTextAlignment,
    this.titleSubTitleSpacing,
    this.footerBottomSpacing,
    this.padding,
    this.headerFlexUnits,
    this.bodyFlexUnits,
    this.footerFlexUnits,
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
    this.footerWidgetReplacement,
    this.animationIndex,
    this.animationArguments,
  });

  /// The main title of the slide.
  final String titleText;

  /// The subtitle of the slide.
  final String? subTitleText;

  /// The footer text of the slide.
  final String? footerText;

  /// The gradient applied to the title text.
  final Gradient? titleGradient;

  /// The style for the title text.
  final TextStyle? titleStyle;

  /// The style for the subtitle text.
  final TextStyle? subtitleStyle;

  /// The style for the footer text.
  final TextStyle? footerStyle;

  /// The alignment of the title text within the slide.
  final Alignment? titleAlignment;

  /// The alignment of the subtitle text within the slide.
  final Alignment? subtitleAlignment;

  /// The alignment of the footer text within the slide.
  final Alignment? footerAlignment;

  /// The text alignment of the title text.
  final TextAlign? titleTextAlignment;

  /// The text alignment of the subtitle text.
  final TextAlign? subtitleTextAlignment;

  /// The text alignment of the footer text.
  final TextAlign? footerTextAlignment;

  /// The spacing widget between the title and subtitle.
  final Widget? titleSubTitleSpacing;

  /// The spacing widget below the footer text.
  final Widget? footerBottomSpacing;

  /// The padding around the slide content.
  final EdgeInsets? padding;

  /// The flex units for the header section of the slide.
  final int? headerFlexUnits;

  /// The flex units for the body section of the slide.
  final int? bodyFlexUnits;

  /// The flex units for the footer section of the slide.
  final int? footerFlexUnits;

  /// A widget that can replace the default title text widget.
  final Widget? titleWidgetReplacement;

  /// A widget that can replace the default subtitle text widget.
  final Widget? subtitleWidgetReplacement;

  /// A widget that can replace the default footer text widget.
  final Widget? footerWidgetReplacement;

  /// The index of the slide for animation purposes.
  final int? animationIndex;

  /// Additional animation settings for the slide.
  final AnimationArguments? animationArguments;

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
                      child: titleGradient != null
                          ? GradientText(
                              titleText,
                              gradient: titleGradient ??
                                  KeynoteGradients.titleSlideGradient,
                              style: titleStyle,
                              textAlign: titleTextAlignment,
                            )
                          : Text(
                              titleText,
                              style: titleStyle,
                              textAlign: titleTextAlignment,
                            ),
                    ),
                indexToShowAt: 0,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
              flexUnits: headerFlexUnits ?? 4,
            ),
            titleSubTitleSpacing ?? verticalMargin8,
            LayoutBody(
              AnimatableWrapper(
                subtitleWidgetReplacement ??
                    Align(
                      alignment: subtitleAlignment ?? Alignment.topCenter,
                      child: Text(
                        subTitleText ?? '',
                        style: subtitleStyle,
                        textAlign: subtitleTextAlignment,
                      ),
                    ),
                indexToShowAt: 1,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
              flexUnits: bodyFlexUnits ?? 2,
            ),
            LayoutFooter(
              AnimatableWrapper(
                footerWidgetReplacement ??
                    Align(
                      alignment: footerAlignment ?? Alignment.bottomCenter,
                      child: Text(
                        footerText ?? '',
                        style: footerStyle,
                        textAlign: footerTextAlignment,
                      ),
                    ),
                indexToShowAt: 2,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
              flexUnits: footerFlexUnits ?? 2,
            ),
            footerBottomSpacing ?? verticalMargin8,
          ],
        ),
      );
}
