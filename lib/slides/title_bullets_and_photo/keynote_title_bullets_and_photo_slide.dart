import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class KeynoteTitleBulletAndPhotoSlide extends StatelessWidget {
  const KeynoteTitleBulletAndPhotoSlide({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.bulletPoints,
    this.bullets,
    this.currentIndex,
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
    super.key,
  });

  final Image image;
  final String title;
  final String subtitle;
  final List<String> bulletPoints;
  final ListBullets? bullets;
  final int? currentIndex;

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

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? emptyPadding,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  LayoutHeader(
                    titleWidgetReplacement ??
                        Align(
                          alignment: titleAlignment ?? Alignment.bottomCenter,
                          child: Text(
                            title,
                            style: titleStyle,
                          ),
                        ),
                    flexUnits: 2,
                  ),
                  titleSubTitleSpacing ?? verticalMargin8,
                  LayoutBody(
                    subtitleWidgetReplacement ??
                        Align(
                          alignment: subtitleAlignment ?? Alignment.topCenter,
                          child: Text(
                            subtitle,
                            style: subtitleStyle,
                          ),
                        ),
                    flexUnits: 1,
                  ),
                  LayoutFooter(
                    bulletPointsWidgetReplacement ??
                        Align(
                          alignment:
                              bulletPointsAlignment ?? Alignment.topCenter,
                          child: currentIndex != null
                              ? AnimatableListText(
                                  texts: bulletPoints,
                                  currentIndex: currentIndex ?? 0,
                                  textAlign:
                                      bulletTextAlignment ?? TextAlign.left,
                                  bullet: bullets ?? ListBullets.circle,
                                  style: bulletTextStyle,
                                )
                              : ListText(
                                  texts: bulletPoints ?? [],
                                  textAlign:
                                      bulletTextAlignment ?? TextAlign.left,
                                  bullet: bullets ?? ListBullets.circle,
                                  style: bulletTextStyle,
                                  padding: bulletPointsPadding,
                                ),
                        ),
                    flexUnits: footerFlexUnits ?? 5,
                  ),
                ],
              ),
            ),
            Expanded(
              child: imageWidgetReplacement ?? image,
            )
          ],
        ),
      );
}
