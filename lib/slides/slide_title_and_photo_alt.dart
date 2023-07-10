import 'package:flutter/widgets.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class SlideTitleAndPhotoAlt extends StatelessWidget {
  const SlideTitleAndPhotoAlt(
    this.widget,
    this.text,
    this.items, {
    super.key,
    this.textStyle,
    this.itemListtextAlign,
    this.itemListdotted,
    this.itemsPadding,
    this.animateItems,
    this.currentIndex,
  });

  final Widget widget;
  final String text;
  final List<String> items;
  final TextStyle? textStyle;
  final TextAlign? itemListtextAlign;
  final bool? itemListdotted;
  final EdgeInsets? itemsPadding;
  final bool? animateItems;
  final int? currentIndex;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: Column(
              children: [
                LayoutHeader(
                  Column(
                    children: [
                      const Spacer(),
                      Text(text),
                    ],
                  ),
                  flexUnits: 2,
                ),
                LayoutBody(
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 40),
                    child: animateItems ?? false
                        ? AnimatableListText(
                            texts: items,
                            currentIndex: currentIndex ?? 0,
                            textAlign: itemListtextAlign,
                            dotted: itemListdotted,
                            padding: itemsPadding,
                            style: textStyle,
                          )
                        : ListText(
                            texts: items,
                            style: textStyle,
                            textAlign: itemListtextAlign,
                            dotted: itemListdotted,
                            padding: itemsPadding,
                          ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: widget,
          )
        ],
      );
}
