import 'package:flutter/material.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

import 'package:fluttershow_keynote/style/keynote_gradients.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

class KeynoteSectionSlide extends StatelessWidget {
  const KeynoteSectionSlide({
    required this.title,
    this.titleTextStyle,
    this.titleAlignment,
    this.titleGradient,
    this.padding,
    this.sectionTitleReplacementWidget,
    super.key,
  });

  final String title;

  final Gradient? titleGradient;
  final TextStyle? titleTextStyle;
  final Alignment? titleAlignment;

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
                    alignment: titleAlignment ?? Alignment.center,
                    child: titleGradient != null
                        ? GradientText(
                            title,
                            gradient: titleGradient ??
                                KeynoteGradients.sectionTitleGradient,
                            style:
                                titleTextStyle ?? KeynoteTextstyles.section(),
                          )
                        : Text(
                            title,
                            style:
                                titleTextStyle ?? KeynoteTextstyles.section(),
                          ),
                  ),
            ),
          ],
        ),
      );
}
