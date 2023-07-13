import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
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
            LayoutHeader(
              const SizedBox.shrink(),
              flexUnits: 3,
            ),
            LayoutFooter(
              bulletPointsWidgetReplacement ??
                  Align(
                    alignment: bulletPointsAlignment ?? Alignment.topCenter,
                    child: animationIndex != null
                        ? AnimatableListText(
                            texts: bulletPoints ?? [],
                            animationIndex: animationIndex ?? 0,
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
                            style: bulletTextStyle ?? KeynoteTextstyles.body(),
                            padding: bulletPointsPadding,
                          ),
                  ),
              flexUnits: footerFlexUnits ?? 6,
            ),
          ],
        ),
      );
}
