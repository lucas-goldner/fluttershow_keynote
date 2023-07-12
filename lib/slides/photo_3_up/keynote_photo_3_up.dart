import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class KeynotePhoto3UpSlide extends StatelessWidget {
  const KeynotePhoto3UpSlide({
    required this.bigImage,
    required this.smallImageOne,
    required this.smallImageTwo,
    this.padding,
    this.imagesPadding,
    super.key,
  });

  final Image bigImage;
  final Image smallImageOne;
  final Image smallImageTwo;

  final EdgeInsets? padding;
  final EdgeInsets? imagesPadding;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? emptyPadding,
        child: LayoutBody(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Padding(
                  padding: imagesPadding ?? emptyPadding,
                  child: bigImage,
                ),
              ),
              Column(
                children: [
                  Flexible(
                    child: Padding(
                      padding: imagesPadding ?? emptyPadding,
                      child: smallImageOne,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: imagesPadding ?? emptyPadding,
                      child: smallImageTwo,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
}
