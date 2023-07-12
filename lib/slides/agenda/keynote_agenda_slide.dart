import 'package:flutter/material.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class KeynoteAgendaSlide extends StatelessWidget {
  const KeynoteAgendaSlide({
    required this.titleText,
    super.key,
    this.subTitleText,
    this.titleStyle,
    this.subtitleStyle,
    this.titleAlignment,
    this.subtitleAlignment,
    this.footerAlignment,
    this.titleSubTitleSpacing,
    this.subtitleFooterSpacing,
    this.padding,
    this.headerFlexUnits,
    this.bodyFlexUnits,
    this.footerFlexUnits,
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
    this.footerWidget,
  });

  final String titleText;
  final String? subTitleText;

  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final Alignment? titleAlignment;
  final Alignment? subtitleAlignment;
  final Alignment? footerAlignment;

  final Widget? titleSubTitleSpacing;
  final Widget? subtitleFooterSpacing;
  final EdgeInsets? padding;
  final int? headerFlexUnits;
  final int? bodyFlexUnits;
  final int? footerFlexUnits;

  final Widget? titleWidgetReplacement;
  final Widget? subtitleWidgetReplacement;
  final Widget? footerWidget;

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
            titleSubTitleSpacing ?? verticalMargin4,
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
            subtitleFooterSpacing ?? verticalMargin16,
            LayoutFooter(
              Align(
                alignment: footerAlignment ?? Alignment.topCenter,
                child: footerWidget ?? const SizedBox.shrink(),
              ),
              flexUnits: footerFlexUnits ?? 8,
            ),
          ],
        ),
      );
}