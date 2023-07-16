import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';

/// A widget that recreates the image slide from Keynote.
/// Basically just an image on top of a slide.
class KeynoteImageSlide extends StatelessWidget {
  /// Constructs a [KeynoteImageSlide].
  ///
  /// [image] is the widget representing the image to display on the slide.
  ///
  /// [padding] is the optional padding for the slide.
  const KeynoteImageSlide({
    required this.image,
    this.padding,
    super.key,
  });

  /// The widget representing the image to display on the slide.
  final Widget image;

  /// The optional padding for the slide.
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) => Padding(
        padding: padding ?? emptyPadding,
        child: image,
      );
}
