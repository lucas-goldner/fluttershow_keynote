import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class KeynoteBulletsSlide extends StatelessWidget {
  const KeynoteBulletsSlide({
    required this.bulletPoints,
    this.bulletTextStyle,
    this.bullets,
    this.currentIndex,
    this.bulletPointsAlignment,
    this.bulletTextAlignment,
    this.padding,
    this.footerFlexUnits,
    this.bulletPointsWidgetReplacement,
    super.key,
  });

  final List<String> bulletPoints;
  final ListBullets? bullets;
  final int? currentIndex;

  final TextStyle? bulletTextStyle;
  final Alignment? bulletPointsAlignment;
  final TextAlign? bulletTextAlignment;

  final EdgeInsets? padding;
  final int? footerFlexUnits;

  final Widget? bulletPointsWidgetReplacement;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? allPadding48,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LayoutHeader(
              const SizedBox.shrink(),
              flexUnits: 3,
            ),
            LayoutFooter(
              bulletPointsWidgetReplacement ??
                  Align(
                    alignment: bulletPointsAlignment ?? Alignment.topCenter,
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
                            style: bulletTextStyle ?? KeynoteTextstyles.body(),
                          ),
                  ),
              flexUnits: footerFlexUnits ?? 6,
            ),
          ],
        ),
      );
}
