import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// A widget that recreates the bullet slide from Keynote.
/// Consists of a list of bullet points.
class KeynoteBulletsSlide extends StatelessWidget {
  /// Constructs a KeynoteBulletsSlide.
  ///
  /// [bulletPoints] is the list of texts to display on the slide.
  ///
  /// [bullets] is the enum value representing the bullet style, that
  /// should be displayed before each text.
  ///
  /// [bulletTextStyle] is the text style for the bullet points.
  ///
  /// [bulletPointsAlignment] is the alignment for the bullet points.
  ///
  /// [bulletTextAlignment] is the text alignment
  /// for the bullet points.
  ///
  /// [bulletPointsPadding] is the padding for the bullet points.
  ///
  /// [padding] is the padding for the slide.
  ///
  /// [footerFlexUnits] is the flex units for the footer section.
  ///
  /// [bulletPointsWidgetReplacement] is the widget
  /// replacement for the bullet points section.
  ///
  /// [animationIndex] is the index at which the
  /// animation should start.
  ///
  /// [animationArguments] is the animation arguments
  /// for the slide animation.
  const KeynoteBulletsSlide({
    required this.bulletPoints,
    this.bullets,
    this.bulletTextStyle,
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

  /// The list of bullet points to display on the slide.
  final List<String> bulletPoints;

  /// The enum value representing the bullet style.
  final ListBullets? bullets;

  /// The text style for the bullet points.
  final TextStyle? bulletTextStyle;

  /// The alignment for the bullet points.
  final Alignment? bulletPointsAlignment;

  /// The text alignment for the bullet points.
  final TextAlign? bulletTextAlignment;

  /// The padding for the bullet points.
  final EdgeInsets? bulletPointsPadding;

  /// The padding for the slide.
  final EdgeInsets? padding;

  /// The flex units for the footer section.
  final int? footerFlexUnits;

  /// The widget replacement for the bullet points section.
  final Widget? bulletPointsWidgetReplacement;

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
            const Spacer(
              flex: 3,
            ),
            LayoutFooter(
              bulletPointsWidgetReplacement ??
                  Align(
                    alignment: bulletPointsAlignment ?? Alignment.topCenter,
                    child: ListText(
                      texts: bulletPoints,
                      textAlign: bulletTextAlignment ?? TextAlign.left,
                      bullet: bullets ?? ListBullets.circle,
                      style: bulletTextStyle ?? KeynoteTextstyles.body(),
                      padding: bulletPointsPadding,
                      animationArguments: animationArguments,
                      animationIndex: animationIndex,
                    ),
                  ),
              flexUnits: footerFlexUnits ?? 6,
            ),
          ],
        ),
      );
}
