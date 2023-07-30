import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/margins.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

/// A widget that recreates the title and photo alt slide from Keynote.
/// Consists of a title and photo but in an alternative layout.
class KeynoteTitleAndPhotoAltSlide extends StatelessWidget {
  /// Creates a [KeynoteTitleAndPhotoAltSlide].
  ///
  /// The [titleText] is the main title displayed on the slide.
  ///
  /// The [subTitleText] is an subtitle displayed below the title.
  ///
  /// The [image] is the main image displayed on the slide.
  ///
  /// The [titleStyle] defines the style of the title text.
  ///
  /// The [subtitleStyle] defines the style of the subtitle text.
  ///
  /// The [titleAlignment] specifies the alignment of
  /// the title widget within the slide.
  ///
  /// The [subtitleAlignment] specifies the alignment
  /// of the subtitle widget within the slide.
  ///
  /// The [titleTextAlignment] specifies the text alignment of
  /// the title within the slide.
  ///
  /// The [subtitleTextAlignment] specifies the text alignment
  /// of the subtitle within the slide.
  ///
  /// The [padding] specifies the padding around the slide.
  ///
  /// The [titleSubTitleSpacing] defines the spacing
  /// between the title and subtitle.
  ///
  /// The [titleWidgetReplacement] is a custom widget that
  /// replaces the default title widget.
  ///
  /// The [subtitleWidgetReplacement] is a custom widget that
  /// replaces the default subtitle widget.
  ///
  /// The [imageWidgetReplacement] is a custom widget that
  /// replaces the default image widget.
  ///
  /// The [animationIndex] determines the order of appearance
  /// for animated elements.
  ///
  /// The [animationArguments] provides additional configuration
  /// for the animation.
  const KeynoteTitleAndPhotoAltSlide({
    required this.titleText,
    required this.subTitleText,
    required this.image,
    this.titleStyle,
    this.subtitleStyle,
    this.titleAlignment,
    this.subtitleAlignment,
    this.titleTextAlignment,
    this.subtitleTextAlignment,
    this.padding,
    this.titleSubTitleSpacing,
    this.titleWidgetReplacement,
    this.subtitleWidgetReplacement,
    this.imageWidgetReplacement,
    this.animationIndex,
    this.animationArguments,
    super.key,
  });

  /// The main image displayed on the slide.
  final Widget image;

  /// The main title text displayed on the slide.
  final String titleText;

  /// The subtitle text displayed below the title.
  final String subTitleText;

  /// The style for the title text.
  final TextStyle? titleStyle;

  /// The style for the subtitle text.
  final TextStyle? subtitleStyle;

  /// The alignment of the title within the slide.
  final Alignment? titleAlignment;

  /// The alignment of the subtitle within the slide.
  final Alignment? subtitleAlignment;

  /// The text alignment of the title within the slide.
  final TextAlign? titleTextAlignment;

  /// The text alignment of the subtitle within the slide.
  final TextAlign? subtitleTextAlignment;

  /// The padding around the slide.
  final EdgeInsets? padding;

  /// The spacing between the title and subtitle.
  final Widget? titleSubTitleSpacing;

  /// A custom widget that replaces the default title widget.
  final Widget? titleWidgetReplacement;

  /// A custom widget that replaces the default subtitle widget.
  final Widget? subtitleWidgetReplacement;

  /// A custom widget that replaces the default image widget.
  final Widget? imageWidgetReplacement;

  /// The order of appearance for animated elements.
  final int? animationIndex;

  /// Additional configuration for the animation.
  final AnimationArguments? animationArguments;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? emptyPadding,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  LayoutHeader(
                    AnimatableWrapper(
                      titleWidgetReplacement ??
                          Align(
                            alignment: titleAlignment ?? Alignment.bottomCenter,
                            child: Text(
                              titleText,
                              style: titleStyle,
                              textAlign: titleTextAlignment,
                            ),
                          ),
                      indexToShowAt: 0,
                      animationIndex: animationIndex,
                      animationArguments: animationArguments,
                    ),
                    flexUnits: 3,
                  ),
                  titleSubTitleSpacing ?? verticalMargin8,
                  LayoutBody(
                    AnimatableWrapper(
                      subtitleWidgetReplacement ??
                          Align(
                            alignment: subtitleAlignment ?? Alignment.topCenter,
                            child: Text(
                              subTitleText,
                              style: subtitleStyle,
                              textAlign: subtitleTextAlignment,
                            ),
                          ),
                      indexToShowAt: 1,
                      animationIndex: animationIndex,
                      animationArguments: animationArguments,
                    ),
                    flexUnits: 3,
                  ),
                ],
              ),
            ),
            Expanded(
              child: AnimatableWrapper(
                imageWidgetReplacement ?? image,
                indexToShowAt: 2,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
            )
          ],
        ),
      );
}
