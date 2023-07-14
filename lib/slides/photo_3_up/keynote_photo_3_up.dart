import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

/// A widget that represents a 3-up photo slide in a Keynote presentation.
/// Consists of one big image and two smaller ones layed out liks this
/// Big Image | Small Image 1
/// Big Image | Small Image 2
class KeynotePhoto3UpSlide extends StatelessWidget {
  /// Constructs a [KeynotePhoto3UpSlide].
  ///
  /// [bigImage] is the widget representing the large image to display.
  ///
  /// [smallImageOne] is the widget representing the
  /// first small image to display.
  ///
  /// [smallImageTwo] is the widget representing the
  /// second small image to display.
  ///
  /// [padding] is the padding for the slide.
  ///
  /// [imagesPadding] is the padding between the images.
  ///
  /// [animationIndex] is the index used for
  /// controlling the animation of the slide.
  ///
  /// [animationArguments] is the animation arguments for animating the slide.
  const KeynotePhoto3UpSlide({
    required this.bigImage,
    required this.smallImageOne,
    required this.smallImageTwo,
    this.padding,
    this.imagesPadding,
    this.animationIndex,
    this.animationArguments,
    super.key,
  });

  /// The widget representing the large image to display.
  final Widget bigImage;

  /// The widget representing the first small image to display.
  final Widget smallImageOne;

  /// The widget representing the second small image to display.
  final Widget smallImageTwo;

  /// The padding for the slide.
  final EdgeInsets? padding;

  /// The padding between the images.
  final EdgeInsets? imagesPadding;

  /// The index used for controlling the animation of the slide.
  final int? animationIndex;

  /// The animation arguments for animating the slide.
  final AnimationArguments? animationArguments;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? emptyPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AnimatableWrapper(
                Padding(
                  padding: imagesPadding ?? emptyPadding,
                  child: bigImage,
                ),
                indexToShowAt: 0,
                animationIndex: animationIndex,
                animationArguments: animationArguments,
              ),
            ),
            Column(
              children: [
                Flexible(
                  child: AnimatableWrapper(
                    Padding(
                      padding: imagesPadding ?? emptyPadding,
                      child: smallImageOne,
                    ),
                    indexToShowAt: 1,
                    animationIndex: animationIndex,
                    animationArguments: animationArguments,
                  ),
                ),
                Flexible(
                  child: AnimatableWrapper(
                    Padding(
                      padding: imagesPadding ?? emptyPadding,
                      child: smallImageTwo,
                    ),
                    indexToShowAt: 2,
                    animationIndex: animationIndex,
                    animationArguments: animationArguments,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
