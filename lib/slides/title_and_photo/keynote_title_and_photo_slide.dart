import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
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
    this.animationArguments,
    this.animationIndex,
    super.key,
  });

  final String titleText;
  final Widget image;
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

  final int? animationIndex;
  final AnimationArguments? animationArguments;

  Widget _variantOne() => Stack(
        children: [
          imageWidgetReplacement ?? image,
          Padding(
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
                    indexToShowAt: 0,
                    animationIndex: animationIndex,
                    animationArguments: animationArguments,
                  ),
                  flexUnits: headerFlexUnits ?? 4,
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
                          ),
                        ),
                    indexToShowAt: 1,
                    animationIndex: animationIndex,
                    animationArguments: animationArguments,
                  ),
                  flexUnits: bodyFlexUnits ?? 2,
                ),
                LayoutFooter(
                  AnimatableWrapper(
                    headingWidgetReplacement ??
                        Align(
                          alignment: headingAlignment ?? Alignment.bottomCenter,
                          child: Text(
                            headingText ?? '',
                            style: headingStyle,
                          ),
                        ),
                    indexToShowAt: 2,
                    animationIndex: animationIndex,
                    animationArguments: animationArguments,
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
                  AnimatableWrapper(
                    headingWidgetReplacement ??
                        Align(
                          alignment: headingAlignment ?? Alignment.topLeft,
                          child: Text(
                            headingText ?? '',
                            style: headingStyle,
                          ),
                        ),
                    indexToShowAt: 0,
                    animationIndex: animationIndex,
                    animationArguments: animationArguments,
                  ),
                  flexUnits: headingFlexUnits ?? 1,
                ),
                LayoutHeader(
                  AnimatableWrapper(
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
                    indexToShowAt: 1,
                    animationIndex: animationIndex,
                    animationArguments: animationArguments,
                  ),
                  flexUnits: headerFlexUnits ?? 5,
                ),
                titleSubTitleSpacing ?? verticalMargin8,
                LayoutBody(
                  AnimatableWrapper(
                    subtitleWidgetReplacement ??
                        Align(
                          alignment: subtitleAlignment ?? Alignment.topLeft,
                          child: Text(
                            subTitleText ?? '',
                            style: subtitleStyle,
                          ),
                        ),
                    indexToShowAt: 2,
                    animationIndex: animationIndex,
                    animationArguments: animationArguments,
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
      case Variants.one:
        return _variantOne();
      case Variants.two:
        return _variantTwo();
      case _:
        return _variantOne();
    }
  }
}
