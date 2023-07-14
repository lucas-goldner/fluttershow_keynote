import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class KeynoteBulletsSlide extends StatelessWidget {
  const KeynoteBulletsSlide({
    required this.bulletPoints,
    this.bulletTextStyle,
    this.bullets,
    this.bulletPointsAlignment,
    this.bulletTextAlignment,
    this.bulletPointsPadding,
    this.padding,
    this.footerFlexUnits,
    this.bulletPointsWidgetReplacement,
    this.animationIndex,
    this.animationArguments,
    super.key,
  });

  final List<String> bulletPoints;
  final ListBullets? bullets;

  final TextStyle? bulletTextStyle;
  final Alignment? bulletPointsAlignment;
  final TextAlign? bulletTextAlignment;

  final EdgeInsets? bulletPointsPadding;
  final EdgeInsets? padding;
  final int? footerFlexUnits;

  final Widget? bulletPointsWidgetReplacement;

  final int? animationIndex;
  final AnimationArguments? animationArguments;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? allPadding48,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 3,
            ),
            LayoutFooter(
              bulletPointsWidgetReplacement ??
                  Align(
                    alignment: bulletPointsAlignment ?? Alignment.topCenter,
                    child: ListText(
                      texts: bulletPoints,
                      textAlign: bulletTextAlignment ?? TextAlign.left,
                      bullet: bullets ?? ListBullets.circle,
                      style: bulletTextStyle ?? KeynoteTextstyles.body(),
                      padding: bulletPointsPadding,
                      animationArguments: animationArguments,
                      animationIndex: animationIndex,
                    ),
                  ),
              flexUnits: footerFlexUnits ?? 6,
            ),
          ],
        ),
      );
}
