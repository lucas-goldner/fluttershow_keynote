import 'package:flutter/material.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class KeynoteTitleOnlySlide extends StatelessWidget {
  const KeynoteTitleOnlySlide({
    required this.titleText,
    super.key,
    this.subTitleText,
    this.titleStyle,
    this.subtitleStyle,
    this.titleAlignment,
    this.subtitleAlignment,
    this.titleSubTitleSpacing,
    this.padding,
    this.headerFlexUnits,
    this.bodyFlexUnits,
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
  });

  final String titleText;
  final String? subTitleText;

  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final Alignment? titleAlignment;
  final Alignment? subtitleAlignment;

  final Widget? titleSubTitleSpacing;
  final EdgeInsets? padding;
  final int? headerFlexUnits;
  final int? bodyFlexUnits;

  final Widget? titleWidgetReplacement;
  final Widget? subtitleWidgetReplacement;

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
              flexUnits: bodyFlexUnits ?? 8,
            ),
          ],
        ),
      );
}
