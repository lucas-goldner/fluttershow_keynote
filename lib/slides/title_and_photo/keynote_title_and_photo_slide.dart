import 'package:flutter/material.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';

class KeynoteTitleAndPhotoSlide extends StatelessWidget {
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
    this.variant,
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
    this.headingWidgetReplacement,
    this.imageWidgetReplacement,
    super.key,
  });

  final String titleText;
  final Image image;
  final String? subTitleText;
  final String? headingText;

  final Gradient? titleGradient;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final TextStyle? headingStyle;
  final Alignment? titleAlignment;
  final Alignment? subtitleAlignment;
  final Alignment? headingAlignment;

  final Widget? titleSubTitleSpacing;
  final Widget? headingBottomSpacing;
  final EdgeInsets? padding;
  final int? headerFlexUnits;
  final int? bodyFlexUnits;
  final int? headingFlexUnits;

  final Widget? titleWidgetReplacement;
  final Widget? subtitleWidgetReplacement;
  final Widget? headingWidgetReplacement;
  final Widget? imageWidgetReplacement;

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
                  flexUnits: headerFlexUnits ?? 4,
                ),
                titleSubTitleSpacing ?? verticalMargin8,
                LayoutBody(
                  subtitleWidgetReplacement ??
                      Align(
                        alignment: subtitleAlignment ?? Alignment.topCenter,
                        child: Text(
                          subTitleText ?? '',
                          style: subtitleStyle,
                        ),
                      ),
                  flexUnits: bodyFlexUnits ?? 2,
                ),
                LayoutFooter(
                  headingWidgetReplacement ??
                      Align(
                        alignment: headingAlignment ?? Alignment.bottomCenter,
                        child: Text(
                          headingText ?? '',
                          style: headingStyle,
                        ),
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
                  headingWidgetReplacement ??
                      Align(
                        alignment: headingAlignment ?? Alignment.topLeft,
                        child: Text(
                          headingText ?? '',
                          style: headingStyle,
                        ),
                      ),
                  flexUnits: headingFlexUnits ?? 1,
                ),
                LayoutHeader(
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
                  flexUnits: headerFlexUnits ?? 5,
                ),
                titleSubTitleSpacing ?? verticalMargin8,
                LayoutBody(
                  subtitleWidgetReplacement ??
                      Align(
                        alignment: subtitleAlignment ?? Alignment.topLeft,
                        child: Text(
                          subTitleText ?? '',
                          style: subtitleStyle,
                        ),
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
      case Variants.variantOne:
        return _variantOne();
      case Variants.variantTwo:
        return _variantTwo();
      case _:
        return _variantOne();
    }
  }
}
