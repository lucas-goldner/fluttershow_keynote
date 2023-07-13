import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/wrapper/animatable_wrapper.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class KeynoteTitleAndBulletsSlide extends StatelessWidget {
  const KeynoteTitleAndBulletsSlide({
    required this.titleText,
    this.subTitleText,
    this.bulletPoints,
    this.bulletTextStyle,
    this.bullets,
    this.titleStyle,
    this.subtitleStyle,
    this.bulletPointsAlignment,
    this.bulletTextAlignment,
    this.titleAlignment,
    this.subtitleAlignment,
    this.titleSubTitleSpacing,
    this.subtitleBulletTextSpacing,
    this.bulletPointsPadding,
    this.padding,
    this.headerFlexUnits,
    this.bodyFlexUnits,
    this.footerFlexUnits,
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
    this.bulletPointsWidgetReplacement,
    this.animationIndex,
    this.animationArguments,
    super.key,
  });

  final String titleText;
  final String? subTitleText;
  final List<String>? bulletPoints;
  final ListBullets? bullets;

  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final TextStyle? bulletTextStyle;
  final Alignment? titleAlignment;
  final Alignment? subtitleAlignment;
  final Alignment? bulletPointsAlignment;
  final TextAlign? bulletTextAlignment;

  final Widget? titleSubTitleSpacing;
  final Widget? subtitleBulletTextSpacing;

  final EdgeInsets? bulletPointsPadding;
  final EdgeInsets? padding;
  final int? headerFlexUnits;
  final int? bodyFlexUnits;
  final int? footerFlexUnits;

  final Widget? titleWidgetReplacement;
  final Widget? subtitleWidgetReplacement;
  final Widget? bulletPointsWidgetReplacement;

  final int? animationIndex;
  final AnimationArguments? animationArguments;

  int getAnimationIndices() {
    final length = bulletPoints?.length ?? 0;

    if (animationIndex != null) {
      return (animationIndex ?? 0) + 2 - length;
    }

    return 2;
  }

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
                      child: Text(
                        titleText,
                        style: titleStyle,
                      ),
                    ),
                indexToShowAt: 0,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
              flexUnits: headerFlexUnits ?? 2,
            ),
            titleSubTitleSpacing ?? const SizedBox.shrink(),
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
              flexUnits: bodyFlexUnits ?? 1,
            ),
            subtitleBulletTextSpacing ?? verticalMargin32,
            LayoutFooter(
              AnimatableWrapper(
                bulletPointsWidgetReplacement ??
                    Align(
                      alignment:
                          bulletPointsAlignment ?? Alignment.bottomCenter,
                      child: animationIndex != null
                          ? AnimatableListText(
                              texts: bulletPoints ?? [],
                              animationIndex: getAnimationIndices(),
                              textAlign: bulletTextAlignment ?? TextAlign.left,
                              bullet: bullets ?? ListBullets.circle,
                              style: bulletTextStyle,
                              padding: bulletPointsPadding,
                              animationArguments: animationArguments,
                            )
                          : ListText(
                              texts: bulletPoints ?? [],
                              textAlign: bulletTextAlignment ?? TextAlign.left,
                              bullet: bullets ?? ListBullets.circle,
                              style: bulletTextStyle,
                              padding: bulletPointsPadding,
                            ),
                    ),
                indexToShowAt: 2,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
              flexUnits: footerFlexUnits ?? 6,
            ),
          ],
        ),
      );
}
