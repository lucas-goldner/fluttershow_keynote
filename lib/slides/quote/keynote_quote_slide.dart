import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

import 'package:fluttershow_keynote/style/keynote_gradients.dart';

/// A widget that recreates the quotes slide from Keynote.
/// Consists of a quote and attribution.
class KeynoteQuoteSlide extends StatelessWidget {
  /// Constructs a KeynoteQuoteSlide widget.
  ///
  /// [quoteText] is the text of the quote.
  ///
  /// [attributionText] is the optional text of the attribution.
  ///
  /// [quoteGradient] is the optional gradient to apply to the quote.
  ///
  /// [quoteStyle] is the optional style for the quote text.
  ///
  /// [attributionStyle] is the optional style for the attribution text.
  ///
  /// [quoteAlignment] is the optional alignment for the quote text.
  ///
  /// [attributionAlignment] is the optional alignment for the attribution text.
  ///
  /// [quoteAttributionSpacing] is the optional spacing widget
  /// between the quote and attribution.
  ///
  /// [padding] is the optional padding around the slide.
  ///
  /// [headerFlexUnits] is the optional flex units for the header section.
  ///
  /// [bodyFlexUnits] is the optional flex units for the body section.
  ///
  /// [quoteWidgetReplacement] is the optional replacement widget
  /// for the quote text.
  ///
  /// [attributionWidgetReplacement] is the optional replacement
  /// widget for the attribution text.
  ///
  /// [animationIndex] is the optional index used for
  /// controlling the animation of the slide.
  ///
  /// [animationArguments] is the optional animation arguments
  /// for animating the slide.
  const KeynoteQuoteSlide({
    required this.quoteText,
    super.key,
    this.attributionText,
    this.quoteGradient,
    this.quoteStyle,
    this.attributionStyle,
    this.quoteAlignment,
    this.attributionAlignment,
    this.quoteAttributionSpacing,
    this.padding,
    this.headerFlexUnits,
    this.bodyFlexUnits,
    this.quoteWidgetReplacement,
    this.attributionWidgetReplacement,
    this.animationIndex,
    this.animationArguments,
  });

  /// The text of the quote.
  final String quoteText;

  /// The optional text of the attribution.
  final String? attributionText;

  /// The optional gradient to apply to the quote.
  final Gradient? quoteGradient;

  /// The optional style for the quote text.
  final TextStyle? quoteStyle;

  /// The optional style for the attribution text.
  final TextStyle? attributionStyle;

  /// The optional alignment for the quote text.
  final Alignment? quoteAlignment;

  /// The optional alignment for the attribution text.
  final Alignment? attributionAlignment;

  /// The optional spacing widget between the quote and attribution.
  final Widget? quoteAttributionSpacing;

  /// The optional padding around the slide.
  final EdgeInsets? padding;

  /// The optional flex units for the header section.
  final int? headerFlexUnits;

  /// The optional flex units for the body section.
  final int? bodyFlexUnits;

  /// The optional replacement widget for the quote text.
  final Widget? quoteWidgetReplacement;

  /// The optional replacement widget for the attribution text.
  final Widget? attributionWidgetReplacement;

  /// The optional index used for controlling the animation of the slide.
  final int? animationIndex;

  /// The optional animation arguments for animating the slide.
  final AnimationArguments? animationArguments;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? allPadding48,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LayoutHeader(
              AnimatableWrapper(
                quoteWidgetReplacement ??
                    Align(
                      alignment: quoteAlignment ?? Alignment.bottomCenter,
                      child: quoteGradient != null
                          ? GradientText(
                              quoteText,
                              gradient: quoteGradient ??
                                  KeynoteGradients.titleSlideGradient,
                              style: quoteStyle,
                            )
                          : Text(
                              quoteText,
                              style: quoteStyle,
                            ),
                    ),
                indexToShowAt: 0,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
              flexUnits: headerFlexUnits ?? 5,
            ),
            quoteAttributionSpacing ?? verticalMargin4,
            LayoutBody(
              AnimatableWrapper(
                attributionWidgetReplacement ??
                    Align(
                      alignment: attributionAlignment ?? Alignment.topCenter,
                      child: Text(
                        attributionText ?? '',
                        style: attributionStyle,
                      ),
                    ),
                indexToShowAt: 1,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
              flexUnits: bodyFlexUnits ?? 4,
            ),
          ],
        ),
      );
}
