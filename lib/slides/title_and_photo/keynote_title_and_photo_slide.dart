import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';

/// A widget that recreates the title and photo slide from Keynote.
/// Consists of a title and photo.
class KeynoteTitleAndPhotoSlide extends StatelessWidget {
  /// Creates a KeynoteTitleAndPhotoSlide.
  ///
  /// The [titleText] is used for the displayed title.
  ///
  /// The [subTitleText] is an subtitle displayed below the title.
  ///
  /// The [image] will be shown on the right side.
  ///
  /// The [headingText] is an heading displayed
  /// at the bottom of the slide.
  ///
  /// The [titleStyle] defines the style of the title text.
  ///
  /// The [titleGradient] is a gradient used as the background for the title.
  ///
  /// The [subtitleStyle] defines the style of the subtitle text.
  ///
  /// The [headingStyle] defines the style of the heading text.
  ///
  /// The [titleAlignment] specifies the alignment
  /// of the title within the slide.
  ///
  /// The [subtitleAlignment] specifies the alignment
  /// of the subtitle within the slide.
  ///
  /// The [headingAlignment] specifies the alignment
  /// of the heading within the slide.
  ///
  /// The [titleSubTitleSpacing] is a widget used to
  /// add spacing between the title and subtitle.
  ///
  /// The [headingBottomSpacing] is a widget used to
  /// add spacing at the bottom of the heading.
  ///
  /// The [padding] specifies the padding around the slide.
  ///
  /// The [headerFlexUnits] determines the flex units for the header section.
  ///
  /// The [bodyFlexUnits] determines the flex units for the body section.
  ///
  /// The [headingFlexUnits] determines the flex units for the heading section.
  ///
  /// The [titleWidgetReplacement] is a replacement widget for the title.
  ///
  /// The [subtitleWidgetReplacement] is a replacement widget for the subtitle.
  ///
  /// The [headingWidgetReplacement] is a replacement widget for the heading.
  ///
  /// The [imageWidgetReplacement] is a replacement widget for the image.
  ///
  /// The [animationIndex] determines the order of
  /// appearance for animated elements.
  ///
  /// The [animationArguments] provides additional
  /// configuration for the animation.
  ///
  /// The [variant] specifies the layout variant for the slide. If not provided,
  /// the default variant is used. Only available here, since the layout between
  /// variations is too different.
  const KeynoteTitleAndPhotoSlide({
    required this.titleText,
    required this.image,
    this.subTitleText,
    this.headingText,
    this.titleStyle,
    this.titleGradient,
    this.subtitleStyle,
    this.headingStyle,
    this.titleAlignment,
    this.subtitleAlignment,
    this.headingAlignment,
    this.titleSubTitleSpacing,
    this.headingBottomSpacing,
    this.padding,
    this.headerFlexUnits,
    this.bodyFlexUnits,
    this.headingFlexUnits,
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
    this.headingWidgetReplacement,
    this.imageWidgetReplacement,
    this.animationArguments,
    this.animationIndex,
    this.variant,
    super.key,
  });

  /// The main title text.
  final String titleText;

  /// The image to display.
  final Widget image;

  /// The subtitle text.
  final String? subTitleText;

  /// The heading text.
  final String? headingText;

  /// The gradient for the title background.
  final Gradient? titleGradient;

  /// The style for the title text.
  final TextStyle? titleStyle;

  /// The style for the subtitle text.
  final TextStyle? subtitleStyle;

  /// The style for the heading text.
  final TextStyle? headingStyle;

  /// The alignment of the title.
  final Alignment? titleAlignment;

  /// The alignment of the subtitle.
  final Alignment? subtitleAlignment;

  /// The alignment of the heading.
  final Alignment? headingAlignment;

  /// The spacing widget between the title and subtitle.
  final Widget? titleSubTitleSpacing;

  /// The spacing widget at the bottom of the heading.
  final Widget? headingBottomSpacing;

  /// The padding around the slide.
  final EdgeInsets? padding;

  /// The flex units for the header section.
  final int? headerFlexUnits;

  /// The flex units for the body section.
  final int? bodyFlexUnits;

  /// The flex units for the heading section.
  final int? headingFlexUnits;

  /// The widget replacement for the title.
  final Widget? titleWidgetReplacement;

  /// The widget replacement for the subtitle.
  final Widget? subtitleWidgetReplacement;

  /// The widget replacement for the heading.
  final Widget? headingWidgetReplacement;

  /// The widget replacement for the image.
  final Widget? imageWidgetReplacement;

  /// The animation index for the slide.
  final int? animationIndex;

  /// The animation arguments for the slide.
  final AnimationArguments? animationArguments;

  /// The variant of the slide.
  final Variants? variant;

  Widget _variantOne() => Stack(
        children: [
          imageWidgetReplacement ?? image,
          Padding(
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
                                      const LinearGradient(
                                        colors: Colors.primaries,
                                      ),
                                  style: titleStyle,
                                )
                              : Text(
                                  titleText,
                                  style: titleStyle,
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
                    headingWidgetReplacement ??
                        Align(
                          alignment: headingAlignment ?? Alignment.bottomCenter,
                          child: Text(
                            headingText ?? '',
                            style: headingStyle,
                          ),
                        ),
                    indexToShowAt: 2,
                    animationIndex: animationIndex,
                    animationArguments: animationArguments,
                  ),
                  flexUnits: headingFlexUnits ?? 2,
                ),
                headingBottomSpacing ?? verticalMargin8
              ],
            ),
          ),
        ],
      );

  Widget _variantTwo() => Stack(
        children: [
          imageWidgetReplacement ?? image,
          Padding(
            padding: padding ?? allPadding48,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                headingBottomSpacing ?? verticalMargin8,
                LayoutFooter(
                  AnimatableWrapper(
                    headingWidgetReplacement ??
                        Align(
                          alignment: headingAlignment ?? Alignment.topLeft,
                          child: Text(
                            headingText ?? '',
                            style: headingStyle,
                          ),
                        ),
                    indexToShowAt: 0,
                    animationIndex: animationIndex,
                    animationArguments: animationArguments,
                  ),
                  flexUnits: headingFlexUnits ?? 1,
                ),
                LayoutHeader(
                  AnimatableWrapper(
                    titleWidgetReplacement ??
                        Align(
                          alignment: titleAlignment ?? Alignment.bottomLeft,
                          child: titleGradient != null
                              ? GradientText(
                                  titleText,
                                  gradient: titleGradient ??
                                      const LinearGradient(
                                        colors: Colors.primaries,
                                      ),
                                  style: titleStyle,
                                )
                              : Text(
                                  titleText,
                                  style: titleStyle,
                                ),
                        ),
                    indexToShowAt: 1,
                    animationIndex: animationIndex,
                    animationArguments: animationArguments,
                  ),
                  flexUnits: headerFlexUnits ?? 5,
                ),
                titleSubTitleSpacing ?? verticalMargin8,
                LayoutBody(
                  AnimatableWrapper(
                    subtitleWidgetReplacement ??
                        Align(
                          alignment: subtitleAlignment ?? Alignment.topLeft,
                          child: Text(
                            subTitleText ?? '',
                            style: subtitleStyle,
                          ),
                        ),
                    indexToShowAt: 2,
                    animationIndex: animationIndex,
                    animationArguments: animationArguments,
                  ),
                  flexUnits: bodyFlexUnits ?? 1,
                ),
              ],
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case Variants.one:
        return _variantOne();
      case Variants.two:
        return _variantTwo();
      case _:
        return _variantOne();
    }
  }
}
