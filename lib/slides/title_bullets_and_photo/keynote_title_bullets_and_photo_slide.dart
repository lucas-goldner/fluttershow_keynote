import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class KeynoteTitleBulletAndPhotoSlide extends StatelessWidget {
  const KeynoteTitleBulletAndPhotoSlide({
    required this.titleText,
    required this.subTitleText,
    required this.image,
    required this.bulletPoints,
    this.bullets,
    this.titleStyle,
    this.subtitleStyle,
    this.bulletTextStyle,
    this.titleAlignment,
    this.subtitleAlignment,
    this.bulletPointsAlignment,
    this.bulletTextAlignment,
    this.bulletPointsPadding,
    this.padding,
    this.titleSubTitleSpacing,
    this.subtitleBulletSpacing,
    this.headerFlexUnits,
    this.bodyFlexUnits,
    this.footerFlexUnits,
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
    this.imageWidgetReplacement,
    this.bulletPointsWidgetReplacement,
    this.animationIndex,
    this.animationArguments,
    super.key,
  });

  final Widget image;
  final String titleText;
  final String subTitleText;
  final List<String> bulletPoints;
  final ListBullets? bullets;

  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final TextStyle? bulletTextStyle;
  final Alignment? titleAlignment;
  final Alignment? subtitleAlignment;
  final Alignment? bulletPointsAlignment;
  final TextAlign? bulletTextAlignment;

  final EdgeInsets? padding;
  final EdgeInsets? bulletPointsPadding;
  final Widget? titleSubTitleSpacing;
  final Widget? subtitleBulletSpacing;

  final int? headerFlexUnits;
  final int? bodyFlexUnits;
  final int? footerFlexUnits;

  final Widget? titleWidgetReplacement;
  final Widget? subtitleWidgetReplacement;
  final Widget? imageWidgetReplacement;
  final Widget? bulletPointsWidgetReplacement;

  final int? animationIndex;
  final AnimationArguments? animationArguments;

  int getAnimationIndices() {
    if (animationIndex != null) {
      return (animationIndex ?? 0) - 3;
    }

    return 3;
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? emptyPadding,
        child: Row(
          children: [
            Expanded(
              child: Column(
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
                    flexUnits: 2,
                  ),
                  titleSubTitleSpacing ?? verticalMargin8,
                  LayoutBody(
                    AnimatableWrapper(
                      subtitleWidgetReplacement ??
                          Align(
                            alignment: subtitleAlignment ?? Alignment.topCenter,
                            child: Text(
                              subTitleText,
                              style: subtitleStyle,
                            ),
                          ),
                      indexToShowAt: 1,
                      animationIndex: animationIndex,
                      animationArguments: animationArguments,
                    ),
                    flexUnits: 1,
                  ),
                  LayoutFooter(
                    AnimatableWrapper(
                      bulletPointsWidgetReplacement ??
                          Align(
                            alignment:
                                bulletPointsAlignment ?? Alignment.topCenter,
                            child: ListText(
                              texts: bulletPoints,
                              textAlign: bulletTextAlignment ?? TextAlign.left,
                              bullet: bullets ?? ListBullets.circle,
                              style: bulletTextStyle,
                              padding: bulletPointsPadding,
                              animationIndex: animationIndex != null
                                  ? getAnimationIndices()
                                  : null,
                              animationArguments: animationArguments,
                            ),
                          ),
                      indexToShowAt: 3,
                      animationIndex: animationIndex,
                      animationArguments: animationArguments,
                    ),
                    flexUnits: footerFlexUnits ?? 5,
                  ),
                ],
              ),
            ),
            Expanded(
              child: AnimatableWrapper(
                imageWidgetReplacement ?? image,
                indexToShowAt: 2,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
            )
          ],
        ),
      );
}
