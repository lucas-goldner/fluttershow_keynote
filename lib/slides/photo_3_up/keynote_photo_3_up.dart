import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class KeynotePhoto3UpSlide extends StatelessWidget {
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

  final Widget bigImage;
  final Widget smallImageOne;
  final Widget smallImageTwo;

  final EdgeInsets? padding;
  final EdgeInsets? imagesPadding;

  final int? animationIndex;
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
