import 'package:flutter/material.dart';
import 'package:fluttershow_keynote/slides/title_slide/keynote_title_slide.dart';

class SlideTitleAndPhoto extends StatelessWidget {
  const SlideTitleAndPhoto({required this.image, super.key});
  final Image image;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          image,
          const KeynoteTitleSlide(
            titleText: 'Dummy',
            subTitleText: 'Little subtitle',
            footerText: 'Dummy Footer',
            titleStyle: TextStyle(color: Colors.black),
          )
        ],
      );
}
