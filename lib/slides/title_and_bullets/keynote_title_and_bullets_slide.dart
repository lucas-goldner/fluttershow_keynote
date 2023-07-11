import 'package:flutter/material.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class KeynoteTitleAndBulletsSlide extends StatelessWidget {
  const KeynoteTitleAndBulletsSlide({
    required this.titleText,
    this.subTitleText,
    this.bulletPoints,
    this.bulletTextStyle,
    this.bullets,
    this.currentIndex,
    this.titleStyle,
    this.subtitleStyle,
    this.bulletPointsAlignment,
    this.bulletTextAlignment,
    this.titleAlignment,
    this.subtitleAlignment,
    this.titleSubTitleSpacing,
    this.subtitleBulletTextSpacing,
    this.padding,
    this.headerFlexUnits,
    this.bodyFlexUnits,
    this.footerFlexUnits,
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
    this.bulletPointsWidgetReplacement,
    super.key,
  });

  final String titleText;
  final String? subTitleText;
  final List<String>? bulletPoints;
  final ListBullets? bullets;
  final int? currentIndex;

  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final TextStyle? bulletTextStyle;
  final Alignment? titleAlignment;
  final Alignment? subtitleAlignment;
  final Alignment? bulletPointsAlignment;
  final TextAlign? bulletTextAlignment;

  final Widget? titleSubTitleSpacing;
  final Widget? subtitleBulletTextSpacing;
  final EdgeInsets? padding;
  final int? headerFlexUnits;
  final int? bodyFlexUnits;
  final int? footerFlexUnits;

  final Widget? titleWidgetReplacement;
  final Widget? subtitleWidgetReplacement;
  final Widget? bulletPointsWidgetReplacement;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? allPadding48,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LayoutHeader(
              titleWidgetReplacement ??
                  Align(
                    alignment: titleAlignment ?? Alignment.bottomCenter,
                    child: Text(
                      titleText,
                      style: titleStyle,
                    ),
                  ),
              flexUnits: headerFlexUnits ?? 2,
            ),
            titleSubTitleSpacing ?? const SizedBox.shrink(),
            LayoutBody(
              subtitleWidgetReplacement ??
                  Align(
                    alignment: subtitleAlignment ?? Alignment.topCenter,
                    child: Text(
                      subTitleText ?? '',
                      style: subtitleStyle,
                    ),
                  ),
              flexUnits: bodyFlexUnits ?? 1,
            ),
            subtitleBulletTextSpacing ?? verticalMargin32,
            LayoutFooter(
              bulletPointsWidgetReplacement ??
                  Align(
                    alignment: bulletPointsAlignment ?? Alignment.bottomCenter,
                    child: currentIndex != null
                        ? AnimatableListText(
                            texts: bulletPoints ?? [],
                            currentIndex: currentIndex ?? 0,
                            textAlign: bulletTextAlignment ?? TextAlign.left,
                            bullet: bullets ?? ListBullets.circle,
                            style: bulletTextStyle,
                          )
                        : ListText(
                            texts: bulletPoints ?? [],
                            textAlign: bulletTextAlignment ?? TextAlign.left,
                            bullet: bullets ?? ListBullets.circle,
                            style: bulletTextStyle,
                          ),
                  ),
              flexUnits: footerFlexUnits ?? 6,
            ),
          ],
        ),
      );
}
