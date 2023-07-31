import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';
import 'package:fluttershow_keynote/slides/quote/keynote_quote_slide.dart';

import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// A collection of variants for the [KeynoteQuoteSlide] widget.
class KeynoteQuoteSlideVariants {
  /// Creates a variant of the [KeynoteQuoteSlide] with specific configurations.
  ///
  /// [quoteText] is the text of the quote.
  ///
  /// [attributionText] is the text of the attribution.
  ///
  /// [quoteGradient] is the gradient to apply to the quote.
  ///
  /// [quoteStyle] is the style for the quote text.
  ///
  /// [attributionStyle] is the style for the attribution text.
  ///
  /// [quoteTextAlignment] is the alignment for the quote text.
  ///
  /// [attributionTextAlignment] is the alignment for the attribution text.
  ///
  /// [quoteAlignment] is the alignment for the quote text widget.
  ///
  /// [attributionAlignment] is the alignment for the attribution text widget.
  ///
  /// [quoteAttributionSpacing] is the widget to provide spacing
  /// between the quote and attribution.
  ///
  /// [padding] is the padding around the slide.
  ///
  /// [headerFlexUnits] is the flex units for the header section.
  ///
  /// [bodyFlexUnits] is the flex units for the body section.
  ///
  /// [quoteWidgetReplacement] is the replacement widget for the quote text.
  ///
  /// [attributionWidgetReplacement] is the replacement widget
  /// for the attribution text.
  ///
  /// [animationIndex] is the index used for controlling
  /// the animation of the slide.
  ///
  /// [animationArguments] is the animation arguments for animating the slide.
  static KeynoteQuoteSlide variantOne({
    required String quoteText,
    required String attributionText,
    required Gradient quoteGradient,
    TextStyle? quoteStyle,
    TextStyle? attributionStyle,
    TextAlign? quoteTextAlignment,
    TextAlign? attributionTextAlignment,
    Alignment? quoteAlignment,
    Alignment? attributionAlignment,
    Widget? quoteAttributionSpacing,
    EdgeInsets? padding,
    int? headerFlexUnits,
    int? bodyFlexUnits,
    Widget? quoteWidgetReplacement,
    Widget? attributionWidgetReplacement,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) {
    return KeynoteQuoteSlide(
      quoteText: quoteText,
      attributionText: attributionText,
      quoteGradient: quoteGradient,
      quoteStyle: quoteStyle ?? KeynoteTextstyles.quote(),
      attributionStyle: attributionStyle ?? KeynoteTextstyles.attribution(),
      quoteTextAlignment: quoteTextAlignment,
      attributionTextAlignment: attributionTextAlignment,
      quoteAlignment: quoteAlignment ?? Alignment.bottomCenter,
      attributionAlignment: attributionAlignment ?? Alignment.bottomCenter,
      quoteAttributionSpacing: quoteAttributionSpacing,
      padding: padding,
      headerFlexUnits: headerFlexUnits,
      bodyFlexUnits: bodyFlexUnits,
      quoteWidgetReplacement: quoteWidgetReplacement,
      attributionWidgetReplacement: attributionWidgetReplacement,
      animationIndex: animationIndex,
      animationArguments: animationArguments,
    );
  }

  /// Creates another variant of the [KeynoteQuoteSlide]
  /// with specific configurations.
  ///
  /// [quoteText] is the text of the quote.
  ///
  /// [attributionText] is the text of the attribution.
  ///
  /// [quoteStyle] is the style for the quote text.
  ///
  /// [attributionStyle] is the style for the attribution text.
  ///
  /// [quoteAlignment] is the alignment for the quote text widget.
  ///
  /// [attributionAlignment] is the alignment for the attribution text widget.
  ///
  /// [quoteTextAlignment] is the alignment for the quote text.
  ///
  /// [attributionTextAlignment] is the alignment for the attribution text.
  ///
  /// [quoteAttributionSpacing] is the widget to provide spacing
  /// between the quote and attribution.
  ///
  /// [padding] is the padding around the slide.
  ///
  /// [headerFlexUnits] is the flex units for the header section.
  ///
  /// [bodyFlexUnits] is the flex units for the body section.
  ///
  /// [quoteWidgetReplacement] is the replacement widget for the quote text.
  ///
  /// [attributionWidgetReplacement] is the replacement widget
  /// for the attribution text.
  ///
  /// [animationIndex] is the index used for controlling
  /// the animation of the slide.
  ///
  /// [animationArguments] is the animation arguments for animating the slide.
  static KeynoteQuoteSlide variantTwo({
    required String quoteText,
    required String attributionText,
    TextStyle? quoteStyle,
    TextStyle? attributionStyle,
    Alignment? quoteAlignment,
    Alignment? attributionAlignment,
    TextAlign? quoteTextAlignment,
    TextAlign? attributionTextAlignment,
    Widget? quoteAttributionSpacing,
    EdgeInsets? padding,
    int? headerFlexUnits,
    int? bodyFlexUnits,
    Widget? quoteWidgetReplacement,
    Widget? attributionWidgetReplacement,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) {
    return KeynoteQuoteSlide(
      quoteText: quoteText,
      attributionText: attributionText,
      quoteStyle: quoteStyle ?? KeynoteTextstyles.quote(variant: Variants.two),
      attributionStyle: attributionStyle ??
          KeynoteTextstyles.attribution(variant: Variants.two),
      quoteAlignment: quoteAlignment ?? Alignment.bottomLeft,
      attributionAlignment: attributionAlignment ?? Alignment.centerLeft,
      quoteTextAlignment: quoteTextAlignment,
      attributionTextAlignment: attributionTextAlignment,
      quoteAttributionSpacing: quoteAttributionSpacing,
      padding: padding,
      headerFlexUnits: headerFlexUnits,
      bodyFlexUnits: bodyFlexUnits,
      quoteWidgetReplacement: quoteWidgetReplacement,
      attributionWidgetReplacement: attributionWidgetReplacement,
      animationIndex: animationIndex,
      animationArguments: animationArguments,
    );
  }
}
