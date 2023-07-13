import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';

class KeynoteImageSlide extends StatelessWidget {
  const KeynoteImageSlide({
    required this.image,
    this.padding,
    super.key,
  });

  final Widget image;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? emptyPadding,
        child: image,
      );
}
