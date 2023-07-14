import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class KeynoteTitleAndPhotoAltSlide extends StatelessWidget {
  const KeynoteTitleAndPhotoAltSlide({
    required this.titleText,
    required this.subtitleText,
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
    this.animationIndex,
    this.animationArguments,
    super.key,
  });

  final Widget image;
  final String titleText;
  final String subtitleText;

  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final Alignment? titleAlignment;
  final Alignment? subtitleAlignment;

  final EdgeInsets? padding;
  final Widget? titleSubTitleSpacing;

  final Widget? titleWidgetReplacement;
  final Widget? subtitleWidgetReplacement;
  final Widget? imageWidgetReplacement;

  final int? animationIndex;
  final AnimationArguments? animationArguments;

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
                    flexUnits: 3,
                  ),
                  titleSubTitleSpacing ?? verticalMargin8,
                  LayoutBody(
                    AnimatableWrapper(
                      subtitleWidgetReplacement ??
                          Align(
                            alignment: subtitleAlignment ?? Alignment.topCenter,
                            child: Text(
                              subtitleText,
                              style: subtitleStyle,
                            ),
                          ),
                      indexToShowAt: 1,
                      animationIndex: animationIndex,
                      animationArguments: animationArguments,
                    ),
                    flexUnits: 3,
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
