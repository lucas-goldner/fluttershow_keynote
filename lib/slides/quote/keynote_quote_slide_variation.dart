import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';
import 'package:fluttershow_keynote/slides/quote/keynote_quote_slide.dart';

import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class KeynoteQuoteSlideVariants {
  static KeynoteQuoteSlide variantOne({
    required String quoteText,
    required String attributionText,
    required Gradient gradient,
  }) =>
      KeynoteQuoteSlide(
        quoteText: quoteText,
        attributionText: attributionText,
        quoteGradient: gradient,
        quoteStyle: KeynoteTextstyles.quote(),
        attributionStyle: KeynoteTextstyles.attribution(),
        quoteAlignment: Alignment.bottomCenter,
        attributionAlignment: Alignment.bottomCenter,
      );

  static KeynoteQuoteSlide variantTwo({
    required String quoteText,
    required String attributionText,
  }) =>
      KeynoteQuoteSlide(
        quoteText: quoteText,
        attributionText: attributionText,
        quoteStyle: KeynoteTextstyles.quote(variant: Variants.variantTwo),
        attributionStyle:
            KeynoteTextstyles.attribution(variant: Variants.variantTwo),
        quoteAlignment: Alignment.bottomLeft,
        attributionAlignment: Alignment.centerLeft,
        headerFlexUnits: 3,
        bodyFlexUnits: 3,
        padding: horizontalPadding48 + horizontalPadding32,
      );
}
