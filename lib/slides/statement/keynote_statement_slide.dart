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
  /// [statementTextStyle] is the optional style for the statement text.
  ///
  /// [statementAlignment] is the optional alignment for the statement text.
  ///
  /// [statementGradient] is the optional gradient to apply to the statement.
  ///
  /// [padding] is the optional padding around the slide.
  ///
  /// [statementTitleReplacementWidget] is the optional
  /// replacement widget for the statement.
  const KeynoteStatementSlide({
    required this.statement,
    this.statementTextStyle,
    this.statementAlignment,
    this.statementGradient,
    this.padding,
    this.statementTitleReplacementWidget,
    super.key,
  });

  /// The text of the statement.
  final String statement;

  /// The optional gradient to apply to the statement.
  final Gradient? statementGradient;

  /// The optional style for the statement text.
  final TextStyle? statementTextStyle;

  /// The optional alignment for the statement text.
  final Alignment? statementAlignment;

  /// The optional padding around the slide.
  final EdgeInsets? padding;

  /// The optional replacement widget for the statement.
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
                          )
                        : Text(
                            statement,
                            style: statementTextStyle ??
                                KeynoteTextstyles.statement(),
                          ),
                  ),
            ),
          ],
        ),
      );
}
