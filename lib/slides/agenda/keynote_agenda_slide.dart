import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class KeynoteAgendaSlide extends StatelessWidget {
  const KeynoteAgendaSlide({
    required this.titleText,
    super.key,
    this.subTitleText,
    this.titleStyle,
    this.subtitleStyle,
    this.titleAlignment,
    this.subtitleAlignment,
    this.footerAlignment,
    this.titleSubTitleSpacing,
    this.subtitleFooterSpacing,
    this.padding,
    this.headerFlexUnits,
    this.bodyFlexUnits,
    this.footerFlexUnits,
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
    this.footerWidget,
    this.animationIndex,
    this.animationArguments,
  });

  final String titleText;
  final String? subTitleText;

  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final Alignment? titleAlignment;
  final Alignment? subtitleAlignment;
  final Alignment? footerAlignment;

  final Widget? titleSubTitleSpacing;
  final Widget? subtitleFooterSpacing;
  final EdgeInsets? padding;
  final int? headerFlexUnits;
  final int? bodyFlexUnits;
  final int? footerFlexUnits;

  final Widget? titleWidgetReplacement;
  final Widget? subtitleWidgetReplacement;
  final Widget? footerWidget;

  final int? animationIndex;
  final AnimationArguments? animationArguments;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? allPadding48,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
              flexUnits: headerFlexUnits ?? 2,
            ),
            titleSubTitleSpacing ?? verticalMargin4,
            LayoutBody(
              AnimatableWrapper(
                subtitleWidgetReplacement ??
                    Align(
                      alignment: subtitleAlignment ?? Alignment.topCenter,
                      child: Text(
                        subTitleText ?? '',
                        style: subtitleStyle,
                      ),
                    ),
                indexToShowAt: 1,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
              flexUnits: bodyFlexUnits ?? 2,
            ),
            subtitleFooterSpacing ?? verticalMargin16,
            LayoutFooter(
              AnimatableWrapper(
                Align(
                  alignment: footerAlignment ?? Alignment.topCenter,
                  child: footerWidget ?? const SizedBox.shrink(),
                ),
                indexToShowAt: 2,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
              flexUnits: footerFlexUnits ?? 8,
            ),
          ],
        ),
      );
}
