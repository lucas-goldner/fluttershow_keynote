import 'package:flutter/material.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

import 'package:fluttershow_keynote/style/keynote_gradients.dart';

class KeynoteQuoteSlide extends StatelessWidget {
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
  });

  final String quoteText;
  final String? attributionText;

  final Gradient? quoteGradient;
  final TextStyle? quoteStyle;
  final TextStyle? attributionStyle;
  final Alignment? quoteAlignment;
  final Alignment? attributionAlignment;

  final Widget? quoteAttributionSpacing;
  final EdgeInsets? padding;
  final int? headerFlexUnits;
  final int? bodyFlexUnits;

  final Widget? quoteWidgetReplacement;
  final Widget? attributionWidgetReplacement;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? allPadding48,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LayoutHeader(
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
              flexUnits: headerFlexUnits ?? 5,
            ),
            quoteAttributionSpacing ?? verticalMargin4,
            LayoutBody(
              attributionWidgetReplacement ??
                  Align(
                    alignment: attributionAlignment ?? Alignment.topCenter,
                    child: Text(
                      attributionText ?? '',
                      style: attributionStyle,
                    ),
                  ),
              flexUnits: bodyFlexUnits ?? 4,
            ),
          ],
        ),
      );
}
