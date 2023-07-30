import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

/// A widget that recreates the title only slide from Keynote.
/// Consists of a title and subtitle even though the name
/// of the slide would suggest otherwise.
class KeynoteTitleOnlySlide extends StatelessWidget {
  /// Constructs a [KeynoteTitleOnlySlide] with the given parameters.
  ///
  /// The [titleText] parameter is required and represents
  /// the main title displayed on the slide.
  ///
  /// The [subTitleText] parameter is and represents
  /// the subtitle displayed below the title.
  ///
  /// The [titleStyle] and [subtitleStyle] parameters allow customizing
  /// the text styles of the title and subtitle, respectively.
  ///
  /// The [titleAlignment] and [subtitleAlignment] parameters control
  /// the alignment of the text within their containers.
  ///
  /// The [titleTextAlignment] and [subtitleTextAlignment] parameters control
  /// the text alignment of the texts.
  ///
  /// The [titleSubTitleSpacing] widget adds spacing between the
  /// title and subtitle.
  ///
  /// The [padding] parameter sets the padding around the slide's content.
  ///
  /// The [headerFlexUnits] and [bodyFlexUnits] parameters determine the
  /// flex units for the header and body sections of the slide, respectively.
  ///
  /// The [titleWidgetReplacement] and [subtitleWidgetReplacement] widgets
  /// can be used to replace the default title and subtitle widgets.
  ///
  /// The [animationIndex] and [animationArguments] properties
  /// configure animations for the slide.
  const KeynoteTitleOnlySlide({
    required this.titleText,
    this.subTitleText,
    this.titleStyle,
    this.subtitleStyle,
    this.titleAlignment,
    this.subtitleAlignment,
    this.titleTextAlignment,
    this.subtitleTextAlignment,
    this.titleSubTitleSpacing,
    this.padding,
    this.headerFlexUnits,
    this.bodyFlexUnits,
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
    this.animationIndex,
    this.animationArguments,
    super.key,
  });

  /// The main title text displayed on the slide.
  final String titleText;

  /// An subtitle text displayed below the title.
  final String? subTitleText;

  /// The style applied to the title text.
  final TextStyle? titleStyle;

  /// The style applied to the subtitle text.
  final TextStyle? subtitleStyle;

  /// The alignment of the title text within its container.
  final Alignment? titleAlignment;

  /// The alignment of the subtitle text within its container.
  final Alignment? subtitleAlignment;

  /// The alignment of the title text within its container.
  final TextAlign? titleTextAlignment;

  /// The alignment of the subtitle text within its container.
  final TextAlign? subtitleTextAlignment;

  /// The spacing widget placed between the title and subtitle.
  final Widget? titleSubTitleSpacing;

  /// The padding applied to the slide's content.
  final EdgeInsets? padding;

  /// The number of flex units for the header section.
  final int? headerFlexUnits;

  /// The number of flex units for the body section.
  final int? bodyFlexUnits;

  /// A replacement widget for the title text.
  final Widget? titleWidgetReplacement;

  /// A replacement widget for the subtitle text.
  final Widget? subtitleWidgetReplacement;

  /// The index of the slide for animations.
  final int? animationIndex;

  /// The configuration for the slide animations.
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
              flexUnits: headerFlexUnits ?? 2,
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
              flexUnits: bodyFlexUnits ?? 8,
            ),
          ],
        ),
      );
}
