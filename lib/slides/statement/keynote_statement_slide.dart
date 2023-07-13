import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_keynote/style/keynote_gradients.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class KeynoteStatementSlide extends StatelessWidget {
  const KeynoteStatementSlide({
    required this.statement,
    this.statementTextStyle,
    this.statementAlignment,
    this.statementGradient,
    this.padding,
    this.statementTitleReplacementWidget,
    super.key,
  });

  final String statement;

  final Gradient? statementGradient;
  final TextStyle? statementTextStyle;
  final Alignment? statementAlignment;

  final EdgeInsets? padding;

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
