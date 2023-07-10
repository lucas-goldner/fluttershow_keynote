import 'package:flutter/material.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

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

  @override
  Widget build(BuildContext context) => Padding(
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
                            const LinearGradient(colors: Colors.primaries),
                        style: titleStyle,
                      )
                    : Text(
                        titleText,
                        style: titleStyle,
                      ),
              ),
              flexUnits: 4,
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
              flexUnits: 2,
            ),
            LayoutFooter(
              Align(
                alignment: footerAlignment ?? Alignment.bottomCenter,
                child: Text(
                  footerText ?? '',
                  style: footerStyle,
                ),
              ),
              flexUnits: 2,
            ),
            footerBottomSpacing ?? verticalMargin48
          ],
        ),
      );
}
