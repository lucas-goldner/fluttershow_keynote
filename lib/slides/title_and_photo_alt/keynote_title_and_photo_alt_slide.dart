import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class KeynoteTitleAndPhotoAltSlide extends StatelessWidget {
  const KeynoteTitleAndPhotoAltSlide({
    required this.title,
    required this.subtitle,
    required this.image,
    this.titleStyle,
    this.subtitleStyle,
    this.titleAlignment,
    this.subtitleAlignment,
    this.padding,
    this.titleSubTitleSpacing,
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
    this.imageWidgetReplacement,
    super.key,
  });

  final Image image;
  final String title;
  final String subtitle;

  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final Alignment? titleAlignment;
  final Alignment? subtitleAlignment;

  final EdgeInsets? padding;
  final Widget? titleSubTitleSpacing;

  final Widget? titleWidgetReplacement;
  final Widget? subtitleWidgetReplacement;
  final Widget? imageWidgetReplacement;

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
                    flexUnits: 3,
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
                    flexUnits: 3,
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
