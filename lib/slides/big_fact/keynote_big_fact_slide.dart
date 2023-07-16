import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:fluttershow_keynote/style/keynote_gradients.dart';

/// A widget that recreates the big fact slide from Keynote.
/// Consists of a title and a subtitle.
class KeynoteBigFactSlide extends StatelessWidget {
  /// Constructs a [KeynoteBigFactSlide].
  ///
  /// [titleText] is the text for the slide title.
  ///
  /// [subTitleText] is the text for the slide subtitle.
  ///
  /// [titleGradient] is the gradient used
  /// for the slide title background.
  ///
  /// [titleStyle] is the style for the slide title.
  ///
  /// [subtitleStyle] is the style for the slide subtitle.
  ///
  /// [titleAlignment] is the alignment for the slide title.
  ///
  /// [subtitleAlignment] is the alignment for the slide subtitle.
  ///
  /// [titleSubTitleSpacing] is the widget to provide spacing
  /// between the title and subtitle.
  ///
  /// [padding] is the padding for the slide.
  ///
  /// [headerFlexUnits] is the flex units for the header section.
  ///
  /// [bodyFlexUnits] is the flex units for the body section.
  ///
  /// [titleWidgetReplacement] is the replacement widget
  /// for the slide title.
  ///
  /// [subtitleWidgetReplacement] is the replacement widget
  /// for the slide subtitle.
  ///
  /// [animationIndex] is the index at which
  /// the animation should start.
  ///
  /// [animationArguments] is the animation arguments
  /// for the slide animation.
  const KeynoteBigFactSlide({
    required this.titleText,
    super.key,
    this.subTitleText,
    this.titleGradient,
    this.titleStyle,
    this.subtitleStyle,
    this.titleAlignment,
    this.subtitleAlignment,
    this.titleSubTitleSpacing,
    this.padding,
    this.headerFlexUnits,
    this.bodyFlexUnits,
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
    this.animationIndex,
    this.animationArguments,
  });

  /// The text for the slide title.
  final String titleText;

  /// The text for the slide subtitle.
  final String? subTitleText;

  /// The gradient used for the slide title background.
  final Gradient? titleGradient;

  /// The style for the slide title.
  final TextStyle? titleStyle;

  /// The style for the slide subtitle.
  final TextStyle? subtitleStyle;

  /// The alignment for the slide title.
  final Alignment? titleAlignment;

  /// The alignment for the slide subtitle.
  final Alignment? subtitleAlignment;

  /// The widget to provide spacing between the title and subtitle.
  final Widget? titleSubTitleSpacing;

  /// The padding for the slide.
  final EdgeInsets? padding;

  /// The flex units for the header section.
  final int? headerFlexUnits;

  /// The flex units for the body section.
  final int? bodyFlexUnits;

  /// The replacement widget for the slide title.
  final Widget? titleWidgetReplacement;

  /// The replacement widget for the slide subtitle.
  final Widget? subtitleWidgetReplacement;

  /// The index at which the animation should start.
  final int? animationIndex;

  /// The animation arguments for the slide animation.
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
              flexUnits: headerFlexUnits ?? 2,
            ),
            titleSubTitleSpacing ?? verticalMargin4,
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
          ],
        ),
      );
}
