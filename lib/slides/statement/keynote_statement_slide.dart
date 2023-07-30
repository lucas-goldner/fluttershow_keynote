import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_keynote/style/keynote_gradients.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// A widget that recreates the statement slide from Keynote.
/// Consists
class KeynoteStatementSlide extends StatelessWidget {
  /// Constructs a [KeynoteStatementSlide] widget.
  ///
  /// [statement] is the text of the statement.
  ///
  /// [statementTextStyle] is the style for the statement text.
  ///
  /// [statementAlignment] is the alignment for the statement text widget.
  ///
  /// [statementTextAlignment] is the text alignment for the statement text.
  ///
  /// [statementGradient] is the gradient to apply to the statement.
  ///
  /// [padding] is the padding around the slide.
  ///
  /// [statementTitleReplacementWidget] is the
  /// replacement widget for the statement.
  const KeynoteStatementSlide({
    required this.statement,
    this.statementTextStyle,
    this.statementAlignment,
    this.statementTextAlignment,
    this.statementGradient,
    this.padding,
    this.statementTitleReplacementWidget,
    super.key,
  });

  /// The text of the statement.
  final String statement;

  /// The gradient to apply to the statement.
  final Gradient? statementGradient;

  /// The style for the statement text widget.
  final TextStyle? statementTextStyle;

  /// The alignment for the statement text.
  final Alignment? statementAlignment;

  /// The text alignment for the statement text.
  final TextAlign? statementTextAlignment;

  /// The padding around the slide.
  final EdgeInsets? padding;

  /// The replacement widget for the statement.
  final Widget? statementTitleReplacementWidget;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? allPadding48,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LayoutBody(
              statementTitleReplacementWidget ??
                  Align(
                    alignment: statementAlignment ?? Alignment.center,
                    child: statementGradient != null
                        ? GradientText(
                            statement,
                            gradient: statementGradient ??
                                KeynoteGradients.titleGradient,
                            style: statementTextStyle ??
                                KeynoteTextstyles.statement(),
                            textAlign: statementTextAlignment,
                          )
                        : Text(
                            statement,
                            style: statementTextStyle ??
                                KeynoteTextstyles.statement(),
                            textAlign: statementTextAlignment,
                          ),
                  ),
            ),
          ],
        ),
      );
}
