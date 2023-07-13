import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
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
    this.animationIndex,
    this.animationArguments,
    this.animationIndices,
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

  final int? animationIndex;
  final AnimationArguments? animationArguments;
  final (int, int, int)? animationIndices;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? allPadding48,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (headerWidget != null)
              LayoutHeader(
                AnimatableWrapper(
                  Align(
                    alignment: headerAlignment ?? Alignment.center,
                    child: headerWidget,
                  ),
                  indexToShowAt: animationIndices?.$1 ?? 0,
                  animationIndex: animationIndex,
                  animationArguments: animationArguments,
                ),
                flexUnits: headerFlexUnits,
              )
            else
              const SizedBox.shrink(),
            titleBodySpacing ?? verticalMargin8,
            if (bodyWidget != null)
              LayoutBody(
                AnimatableWrapper(
                  Align(
                    alignment: bodyAlignment ?? Alignment.center,
                    child: bodyWidget,
                  ),
                  indexToShowAt: animationIndices?.$2 ?? 1,
                  animationIndex: animationIndex,
                  animationArguments: animationArguments,
                ),
                flexUnits: bodyFlexUnits,
              )
            else
              const SizedBox.shrink(),
            bodyFooterSpacing ?? verticalMargin8,
            if (footerWidget != null)
              LayoutFooter(
                AnimatableWrapper(
                  Align(
                    alignment: footerAlignment ?? Alignment.center,
                    child: footerWidget,
                  ),
                  indexToShowAt: animationIndices?.$3 ?? 2,
                  animationIndex: animationIndex,
                  animationArguments: animationArguments,
                ),
                flexUnits: footerFlexUnits,
              )
            else
              const SizedBox.shrink(),
          ],
        ),
      );
}
