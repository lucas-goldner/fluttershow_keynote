import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/spacing/paddings.dart';
import 'package:fluttershow_keynote/slides/title_only/keynote_title_only_slide.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

/// Provides static methods to create different variants
/// of the [KeynoteTitleOnlySlide].
class KeynoteTitleOnlySlideVariants {
  /// Creates a variant one of [KeynoteTitleOnlySlide].
  ///
  /// The [titleText] is the main title displayed on the slide.
  ///
  /// The [subTitleText] is an subtitle displayed below the title.
  ///
  /// The [animationIndex] is the index of the slide for animations.
  ///
  /// The [animationArguments] is the configuration for the slide animations.
  ///
  /// Returns a [KeynoteTitleOnlySlide] instance with the
  /// specified configuration.
  static KeynoteTitleOnlySlide variantOne({
    required String titleText,
    required String subTitleText,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleOnlySlide(
        titleText: titleText,
        subTitleText: subTitleText,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitleSmall(),
        titleAlignment: Alignment.bottomCenter,
        subtitleAlignment: Alignment.topCenter,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );

  /// Creates a variant two of [KeynoteTitleOnlySlide].
  ///
  /// The [titleText] is the main title displayed on the slide.
  ///
  /// The [subTitleText] is an subtitle displayed below the title.
  ///
  /// The [animationIndex] is the index of the slide for animations.
  ///
  /// The [animationArguments] is the configuration for the slide animations.
  ///
  /// Returns a [KeynoteTitleOnlySlide] instance with
  /// the specified configuration.
  static KeynoteTitleOnlySlide variantTwo({
    required String titleText,
    required String subTitleText,
    int? animationIndex,
    AnimationArguments? animationArguments,
  }) =>
      KeynoteTitleOnlySlide(
        titleText: titleText,
        subTitleText: subTitleText,
        titleStyle: KeynoteTextstyles.titleSmall(),
        subtitleStyle: KeynoteTextstyles.subtitleSmall(),
        titleAlignment: Alignment.bottomLeft,
        subtitleAlignment: Alignment.topLeft,
        padding: allPadding48,
        animationIndex: animationIndex,
        animationArguments: animationArguments,
      );
}
