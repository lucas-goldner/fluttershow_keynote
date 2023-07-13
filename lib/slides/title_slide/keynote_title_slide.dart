import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:fluttershow_keynote/style/keynote_gradients.dart';

class KeynoteTitleSlide extends StatelessWidget {
  const KeynoteTitleSlide({
    required this.titleText,
    super.key,
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
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
    this.footerWidgetReplacement,
    this.animationIndex,
    this.animationArguments,
  });

  final String titleText;
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
  final int? headerFlexUnits;
  final int? bodyFlexUnits;
  final int? footerFlexUnits;

  final Widget? titleWidgetReplacement;
  final Widget? subtitleWidgetReplacement;
  final Widget? footerWidgetReplacement;

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
                titleWidgetReplacement ??
                    Align(
                      alignment: titleAlignment ?? Alignment.bottomCenter,
                      child: titleGradient != null
                          ? GradientText(
                              titleText,
                              gradient: titleGradient ??
                                  KeynoteGradients.titleSlideGradient,
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
                footerWidgetReplacement ??
                    Align(
                      alignment: footerAlignment ?? Alignment.bottomCenter,
                      child: Text(
                        footerText ?? '',
                        style: footerStyle,
                      ),
                    ),
                indexToShowAt: 2,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
              flexUnits: footerFlexUnits ?? 2,
            ),
            footerBottomSpacing ?? verticalMargin8
          ],
        ),
      );
}
