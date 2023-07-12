import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class KeynoteBlankSlide extends StatelessWidget {
  const KeynoteBlankSlide({
    super.key,
    this.headerWidget,
    this.bodyWidget,
    this.footerWidget,
    this.titleBodySpacing,
    this.bodyFooterSpacing,
    this.headerAlignment,
    this.bodyAlignment,
    this.footerAlignment,
    this.padding,
    this.headerFlexUnits,
    this.bodyFlexUnits,
    this.footerFlexUnits,
  });

  final Widget? headerWidget;
  final Widget? bodyWidget;
  final Widget? footerWidget;

  final Alignment? headerAlignment;
  final Alignment? bodyAlignment;
  final Alignment? footerAlignment;

  final Widget? titleBodySpacing;
  final Widget? bodyFooterSpacing;
  final EdgeInsets? padding;
  final int? headerFlexUnits;
  final int? bodyFlexUnits;
  final int? footerFlexUnits;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? allPadding48,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (headerWidget != null)
              LayoutHeader(
                Align(
                  alignment: headerAlignment ?? Alignment.center,
                  child: headerWidget,
                ),
                flexUnits: headerFlexUnits,
              )
            else
              const SizedBox.shrink(),
            titleBodySpacing ?? verticalMargin8,
            if (bodyWidget != null)
              LayoutBody(
                Align(
                  alignment: bodyAlignment ?? Alignment.center,
                  child: bodyWidget,
                ),
                flexUnits: bodyFlexUnits,
              )
            else
              const SizedBox.shrink(),
            bodyFooterSpacing ?? verticalMargin8,
            if (footerWidget != null)
              LayoutFooter(
                Align(
                  alignment: footerAlignment ?? Alignment.center,
                  child: footerWidget,
                ),
                flexUnits: footerFlexUnits,
              )
            else
              const SizedBox.shrink(),
          ],
        ),
      );
}
