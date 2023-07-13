import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/wrapper/animatable_wrapper.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class KeynoteTitleBulletAndPhotoSlide extends StatelessWidget {
  const KeynoteTitleBulletAndPhotoSlide({
    required this.title,
    required this.subtitle,
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
  final String title;
  final String subtitle;
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
    final length = bulletPoints.length;

    if (animationIndex != null) {
      return (animationIndex ?? 0) + 2 - length;
    }

    return 2;
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
                              title,
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
                              subtitle,
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
                            child: animationIndex != null
                                ? AnimatableListText(
                                    texts: bulletPoints,
                                    animationIndex: getAnimationIndices(),
                                    textAlign:
                                        bulletTextAlignment ?? TextAlign.left,
                                    bullet: bullets ?? ListBullets.circle,
                                    style: bulletTextStyle,
                                    animationArguments: animationArguments,
                                    padding: bulletPointsPadding,
                                  )
                                : ListText(
                                    texts: bulletPoints,
                                    textAlign:
                                        bulletTextAlignment ?? TextAlign.left,
                                    bullet: bullets ?? ListBullets.circle,
                                    style: bulletTextStyle,
                                    padding: bulletPointsPadding,
                                  ),
                          ),
                      indexToShowAt: 2,
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
                indexToShowAt: bulletPoints.length + 2,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
            )
          ],
        ),
      );
}
