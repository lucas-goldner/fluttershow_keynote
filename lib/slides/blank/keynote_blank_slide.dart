import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

/// A widget that recreates the blank slide from Keynote.
/// Can be used as a template when making custom slides.
class KeynoteBlankSlide extends StatelessWidget {
  /// Constructs a [KeynoteBlankSlide].
  ///
  /// [headerWidget] is the widget for the slide header.
  ///
  /// [bodyWidget] is the widget for the slide body.
  ///
  /// [footerWidget] is the widget for the slide footer.
  ///
  /// [headerAlignment] is the alignment for the slide header.
  ///
  /// [bodyAlignment] is the alignment for the slide body.
  ///
  /// [footerAlignment] is the alignment for the slide footer.
  ///
  /// [titleBodySpacing] is the widget to provide spacing
  /// between the title and body.
  ///
  /// [bodyFooterSpacing] is the widget to provide spacing
  /// between the body and footer.
  ///
  /// [padding] is the padding for the slide.
  ///
  /// [headerFlexUnits] is the flex units for the header section.
  ///
  /// [bodyFlexUnits] is the flex units for the body section.
  ///
  /// [footerFlexUnits] is the flex units for the footer section.
  ///
  /// [animationIndex] is the index at which
  /// the animation should start.
  ///
  /// [animationArguments] is the animation arguments
  /// for the slide animation.
  ///
  /// [animationIndices] is the tuple of indices to control
  /// the animation of individual sections.
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

  /// The widget for the slide header.
  final Widget? headerWidget;

  /// The widget for the slide body.
  final Widget? bodyWidget;

  /// The widget for the slide footer.
  final Widget? footerWidget;

  /// The alignment for the slide header.
  final Alignment? headerAlignment;

  /// The alignment for the slide body.
  final Alignment? bodyAlignment;

  /// The alignment for the slide footer.
  final Alignment? footerAlignment;

  /// The widget to provide spacing between the title and body.
  final Widget? titleBodySpacing;

  /// The widget to provide spacing between the body and footer.
  final Widget? bodyFooterSpacing;

  /// The padding for the slide.
  final EdgeInsets? padding;

  /// The flex units for the header section.
  final int? headerFlexUnits;

  /// The flex units for the body section.
  final int? bodyFlexUnits;

  /// The flex units for the footer section.
  final int? footerFlexUnits;

  /// The index at which the animation should start.
  final int? animationIndex;

  /// The animation arguments for the slide animation.
  final AnimationArguments? animationArguments;

  /// The tuple of indices to control the
  /// animation of individual sections.
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
