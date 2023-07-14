import 'package:flutter/widgets.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/model/enum/layout_flex_units.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';

/// A widget that recreates the agenda slide from Keynote.
/// Consists of a title and subtitle with an optional footer
/// widget to place content.
class KeynoteAgendaSlide extends StatelessWidget {
  /// Constructs a KeynoteAgendaSlide widget.
  ///
  /// [titleText] is the text for the slide title.
  ///
  /// [subTitleText] is the text for the slide subtitle.
  ///
  /// [titleStyle] is the text style for the slide title.
  ///
  /// [subtitleStyle] is the text style for the slide subtitle.
  ///
  /// [titleAlignment] is the alignment for the slide title.
  ///
  /// [subtitleAlignment] is the alignment for the slide subtitle.
  ///
  /// [footerAlignment] is the alignment for the slide footer.
  ///
  /// [titleSubTitleSpacing] is the widget to specify spacing
  /// between the title and subtitle.
  ///
  /// [subtitleFooterSpacing] is the widget to specify spacing
  /// between the subtitle and footer.
  ///
  /// [padding] is the padding for the slide.
  ///
  /// [headerFlexUnits] is the flex units for the slide header.
  ///
  /// [bodyFlexUnits] is the flex units for the slide body.
  ///
  /// [footerFlexUnits] is the flex units for the slide footer.
  ///
  /// [titleWidgetReplacement] is the replacement widget
  /// for the slide title.
  ///
  /// [subtitleWidgetReplacement] is the replacement widget
  /// for the slide subtitle.
  ///
  /// [footerWidget] is the widget for the slide footer.
  ///
  /// [animationIndex] is the index at which
  /// the animation should start.
  ///
  /// [animationArguments] is the animation arguments
  /// for the slide animation.
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

  /// The text for the slide title.
  final String titleText;

  /// The text for the slide subtitle.
  final String? subTitleText;

  /// The text style for the slide title.
  final TextStyle? titleStyle;

  /// The text style for the slide subtitle.
  final TextStyle? subtitleStyle;

  /// The alignment for the slide title.
  final Alignment? titleAlignment;

  /// The alignment for the slide subtitle.
  final Alignment? subtitleAlignment;

  /// The alignment for the slide footer.
  final Alignment? footerAlignment;

  /// The widget to specify spacing between the title and subtitle.
  final Widget? titleSubTitleSpacing;

  /// The widget to specify spacing between the subtitle and footer.
  final Widget? subtitleFooterSpacing;

  /// The padding for the slide.
  final EdgeInsets? padding;

  /// The flex units for the slide header.
  final int? headerFlexUnits;

  /// The flex units for the slide body.
  final int? bodyFlexUnits;

  /// The flex units for the slide footer.
  final int? footerFlexUnits;

  /// The replacement widget for the slide title.
  final Widget? titleWidgetReplacement;

  /// The replacement widget for the slide subtitle.
  final Widget? subtitleWidgetReplacement;

  /// The widget for the slide footer.
  final Widget? footerWidget;

  /// The index at which the animation should start.
  final int? animationIndex;

  /// The animation arguments for the slide animation.
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
              flexUnits: headerFlexUnits ?? LayoutFlexUnits.header.flexUnits,
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
              flexUnits: bodyFlexUnits ?? LayoutFlexUnits.body.flexUnits,
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
              flexUnits: footerFlexUnits ?? LayoutFlexUnits.footer.flexUnits,
            ),
          ],
        ),
      );
}
