import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';

import 'package:fluttershow_keynote/style/keynote_gradients.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class KeynoteSectionSlide extends StatelessWidget {
  const KeynoteSectionSlide({
    required this.sectionText,
    this.sectionTextStyle,
    this.sectionAlignment,
    this.sectionGradient,
    this.padding,
    this.sectionTitleReplacementWidget,
    super.key,
  });

  final String sectionText;

  final Gradient? sectionGradient;
  final TextStyle? sectionTextStyle;
  final Alignment? sectionAlignment;

  final EdgeInsets? padding;

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
                          )
                        : Text(
                            sectionText,
                            style:
                                sectionTextStyle ?? KeynoteTextstyles.section(),
                          ),
                  ),
            ),
          ],
        ),
      );
}
