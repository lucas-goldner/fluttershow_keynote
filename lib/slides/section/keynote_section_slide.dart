import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';

import 'package:fluttershow_keynote/style/keynote_gradients.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// A widget that recreates the section slide from Keynote.
/// Consists of a section text.
class KeynoteSectionSlide extends StatelessWidget {
  /// Constructs a [KeynoteSectionSlide] widget.
  ///
  /// [sectionText] is the text of the section title.
  ///
  /// [sectionTextStyle] is the style for the section title text.
  ///
  /// [sectionAlignment] is the alignment for the section title text widget.
  ///
  /// [sectionTextAlignment] is the text alignment for the section title text.
  ///
  /// [sectionGradient] is the gradient to apply to the section title.
  ///
  /// [padding] is the padding around the slide.
  ///
  /// [sectionTitleReplacementWidget] is the replacement
  /// widget for the section title.
  const KeynoteSectionSlide({
    required this.sectionText,
    this.sectionTextStyle,
    this.sectionAlignment,
    this.sectionTextAlignment,
    this.sectionGradient,
    this.padding,
    this.sectionTitleReplacementWidget,
    super.key,
  });

  /// The text of the section title.
  final String sectionText;

  /// The gradient to apply to the section title.
  final Gradient? sectionGradient;

  /// The style for the section title text.
  final TextStyle? sectionTextStyle;

  /// The alignment for the section title text widget.
  final Alignment? sectionAlignment;

  /// The text alignment for the section title text.
  final TextAlign? sectionTextAlignment;

  /// The padding around the slide.
  final EdgeInsets? padding;

  /// The replacement widget for the section title.
  final Widget? sectionTitleReplacementWidget;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? allPadding48,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LayoutBody(
              sectionTitleReplacementWidget ??
                  Align(
                    alignment: sectionAlignment ?? Alignment.center,
                    child: sectionGradient != null
                        ? GradientText(
                            sectionText,
                            gradient: sectionGradient ??
                                KeynoteGradients.sectionTitleGradient,
                            style:
                                sectionTextStyle ?? KeynoteTextstyles.section(),
                            textAlign: sectionTextAlignment,
                          )
                        : Text(
                            sectionText,
                            style:
                                sectionTextStyle ?? KeynoteTextstyles.section(),
                            textAlign: sectionTextAlignment,
                          ),
                  ),
            ),
          ],
        ),
      );
}
