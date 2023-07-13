import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
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
    this.animationIndex,
    this.animationArguments,
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

  final int? animationIndex;
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
