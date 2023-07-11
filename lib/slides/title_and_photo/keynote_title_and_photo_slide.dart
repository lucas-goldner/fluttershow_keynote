import 'package:flutter/material.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';

class KeynoteTitleAndPhotoSlide extends StatelessWidget {
  const KeynoteTitleAndPhotoSlide({
    required this.titleText,
    required this.image,
    this.subTitleText,
    this.footerText,
    this.titleStyle,
    this.titleGradient,
    this.subtitleStyle,
    this.footerStyle,
    this.titleAlignment,
    this.subtitleAlignment,
    this.footerAlignment,
    this.titleSubTitleSpacing,
    this.footerBottomSpacing,
    this.padding,
    this.headerFlexUnits,
    this.bodyFlexUnits,
    this.footerFlexUnits,
    this.variant,
    super.key,
  });

  final String titleText;
  final Image image;
  final String? subTitleText;
  final String? footerText;
  final Gradient? titleGradient;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final TextStyle? footerStyle;
  final Alignment? titleAlignment;
  final Alignment? subtitleAlignment;
  final Alignment? footerAlignment;
  final Widget? titleSubTitleSpacing;
  final Widget? footerBottomSpacing;
  final EdgeInsets? padding;
  final Variants? variant;
  final int? headerFlexUnits;
  final int? bodyFlexUnits;
  final int? footerFlexUnits;

  Widget _variantOne() => Stack(
        children: [
          image,
          Padding(
            padding: padding ?? allPadding48,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LayoutHeader(
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
                  Align(
                    alignment: footerAlignment ?? Alignment.bottomCenter,
                    child: Text(
                      footerText ?? '',
                      style: footerStyle,
                    ),
                  ),
                  flexUnits: footerFlexUnits ?? 2,
                ),
                footerBottomSpacing ?? verticalMargin8
              ],
            ),
          ),
        ],
      );

  Widget _variantTwo() => Stack(
        children: [
          image,
          Padding(
            padding: padding ?? allPadding48,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                footerBottomSpacing ?? verticalMargin8,
                LayoutFooter(
                  Align(
                    alignment: footerAlignment ?? Alignment.topLeft,
                    child: Text(
                      footerText ?? '',
                      style: footerStyle,
                    ),
                  ),
                  flexUnits: footerFlexUnits ?? 1,
                ),
                LayoutHeader(
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
