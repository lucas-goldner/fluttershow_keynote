import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';
import 'package:fluttershow_keynote/slides/quote/keynote_quote_slide.dart';

import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// A collection of variants for the KeynoteQuoteSlide widget.
class KeynoteQuoteSlideVariants {
  /// Creates a variant of the KeynoteQuoteSlide with specific configurations.
  ///
  /// [quoteText] is the text of the quote.
  ///
  /// [attributionText] is the text of the attribution.
  ///
  /// [gradient] is the gradient to apply to the quote.
  ///
  /// [animationIndex] is the optional index used for
  /// controlling the animation of the slide.
  ///
  /// [animationArguments] is the optional animation
  /// arguments for animating the slide.
  static KeynoteQuoteSlide variantOne({
    required String quoteText,
    required String attributionText,
    required Gradient gradient,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteQuoteSlide(
        quoteText: quoteText,
        attributionText: attributionText,
        quoteGradient: gradient,
        quoteStyle: KeynoteTextstyles.quote(),
        attributionStyle: KeynoteTextstyles.attribution(),
        quoteAlignment: Alignment.bottomCenter,
        attributionAlignment: Alignment.bottomCenter,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );

  /// Creates another variant of the KeynoteQuoteSlide
  /// with specific configurations.
  ///
  /// [quoteText] is the text of the quote.
  ///
  /// [attributionText] is the text of the attribution.
  ///
  /// [animationIndex] is the optional index used for
  /// controlling the animation of the slide.
  ///
  /// [animationArguments] is the optional animation
  /// arguments for animating the slide.
  static KeynoteQuoteSlide variantTwo({
    required String quoteText,
    required String attributionText,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteQuoteSlide(
        quoteText: quoteText,
        attributionText: attributionText,
        quoteStyle: KeynoteTextstyles.quote(variant: Variants.two),
        attributionStyle: KeynoteTextstyles.attribution(variant: Variants.two),
        quoteAlignment: Alignment.bottomLeft,
        attributionAlignment: Alignment.centerLeft,
        headerFlexUnits: 3,
        bodyFlexUnits: 3,
        padding: horizontalPadding48 + horizontalPadding32,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );
}
