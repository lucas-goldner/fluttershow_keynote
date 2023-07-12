import 'package:flutter/cupertino.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';

class KeynoteTextstyles {
  static TextStyle _titleVariantOne({Color? color, double? fontSize}) =>
      TextStyle(
        fontSize: fontSize ?? 116,
        fontWeight: FontWeight.w600,
        fontFamily: 'Graphik',
        color: color,
        wordSpacing: 0.9,
      );

  static TextStyle _titleVariantTwo({Color? color, double? fontSize}) =>
      TextStyle(
        fontSize: fontSize ?? 116,
        fontWeight: FontWeight.w600,
        fontFamily: 'Helvetica Neue',
        color: color,
        wordSpacing: 0.8,
      );

  static TextStyle title({
    Variants? variant,
    Color? color,
    double? fontSize,
  }) {
    switch (variant) {
      case Variants.variantOne:
        return _titleVariantOne(color: color, fontSize: fontSize);
      case Variants.variantTwo:
        return _titleVariantTwo(color: color, fontSize: fontSize);
      case _:
        return _titleVariantOne(color: color, fontSize: fontSize);
    }
  }

  static TextStyle titleSmall({
    Variants? variant,
    Color? color,
    double? fontSize,
  }) {
    switch (variant) {
      case Variants.variantOne:
        return _titleVariantOne(color: color, fontSize: fontSize ?? 84);
      case Variants.variantTwo:
        return _titleVariantTwo(color: color, fontSize: fontSize ?? 85);
      case _:
        return _titleVariantOne(color: color, fontSize: fontSize ?? 84);
    }
  }

  static TextStyle _subtitleVariantOne({Color? color, double? fontSize}) =>
      TextStyle(
        fontSize: fontSize ?? 64,
        fontWeight: FontWeight.w500,
        fontFamily: 'Graphik',
        color: color,
      );

  static TextStyle _subtitleVariantTwo({Color? color, double? fontSize}) =>
      TextStyle(
        fontSize: fontSize ?? 55,
        fontWeight: FontWeight.w700,
        fontFamily: 'Helvetica Neue',
        color: color,
      );

  static TextStyle subtitle({
    Variants? variant,
    Color? color,
    double? fontSize,
  }) {
    switch (variant) {
      case Variants.variantOne:
        return _subtitleVariantOne(color: color, fontSize: fontSize);
      case Variants.variantTwo:
        return _subtitleVariantTwo(color: color, fontSize: fontSize);
      case _:
        return _subtitleVariantOne(color: color, fontSize: fontSize);
    }
  }

  static TextStyle subtitleSmall({
    Variants? variant,
    Color? color,
    double? fontSize,
  }) {
    switch (variant) {
      case Variants.variantOne:
        return _subtitleVariantOne(color: color, fontSize: fontSize ?? 54);
      case Variants.variantTwo:
        return _subtitleVariantTwo(color: color, fontSize: fontSize ?? 54);
      case _:
        return _subtitleVariantOne(color: color, fontSize: fontSize ?? 54);
    }
  }

  static TextStyle _footerVariantOne({Color? color, double? fontSize}) =>
      TextStyle(
        fontSize: fontSize ?? 35,
        fontWeight: FontWeight.w500,
        fontFamily: 'Graphik',
        color: color,
      );

  static TextStyle _footerVariantTwo({Color? color, double? fontSize}) =>
      TextStyle(
        fontSize: fontSize ?? 36,
        fontWeight: FontWeight.w700,
        fontFamily: 'Helvetica Neue',
        color: color,
      );

  static TextStyle footer({
    Variants? variant,
    Color? color,
    double? fontSize,
  }) {
    switch (variant) {
      case Variants.variantOne:
        return _footerVariantOne(color: color, fontSize: fontSize);
      case Variants.variantTwo:
        return _footerVariantTwo(color: color, fontSize: fontSize);
      case _:
        return _footerVariantOne(color: color, fontSize: fontSize);
    }
  }

  static TextStyle _headingVariantOne({Color? color, double? fontSize}) =>
      TextStyle(
        fontSize: fontSize ?? 35,
        fontWeight: FontWeight.w500,
        fontFamily: 'Graphik',
        color: color,
      );

  static TextStyle _headingVariantTwo({Color? color, double? fontSize}) =>
      TextStyle(
        fontSize: fontSize ?? 36,
        fontWeight: FontWeight.w700,
        fontFamily: 'Helvetica Neue',
        color: color,
      );

  static TextStyle heading({
    Variants? variant,
    Color? color,
    double? fontSize,
  }) {
    switch (variant) {
      case Variants.variantOne:
        return _headingVariantOne(color: color, fontSize: fontSize);
      case Variants.variantTwo:
        return _headingVariantTwo(color: color, fontSize: fontSize);
      case _:
        return _headingVariantOne(color: color, fontSize: fontSize);
    }
  }

  static TextStyle _bodyVariantOne({Color? color, double? fontSize}) =>
      TextStyle(
        fontSize: fontSize ?? 48,
        fontWeight: FontWeight.w400,
        fontFamily: 'Graphik',
        color: color,
      );

  static TextStyle _bodyVariantTwo({Color? color, double? fontSize}) =>
      TextStyle(
        fontSize: fontSize ?? 48,
        fontWeight: FontWeight.w400,
        fontFamily: 'Helvetica Neue',
        color: color,
      );

  static TextStyle body({
    Variants? variant,
    Color? color,
    double? fontSize,
  }) {
    switch (variant) {
      case Variants.variantOne:
        return _bodyVariantOne(color: color, fontSize: fontSize);
      case Variants.variantTwo:
        return _bodyVariantTwo(color: color, fontSize: fontSize);
      case _:
        return _bodyVariantOne(color: color, fontSize: fontSize);
    }
  }

  static TextStyle _sectionVariantOne({
    Color? color,
    double? fontSize,
  }) =>
      TextStyle(
        fontSize: fontSize ?? 116,
        fontWeight: FontWeight.w700,
        fontFamily: 'Graphik',
        color: color,
      );

  static TextStyle _sectionVariantTwo({Color? color, double? fontSize}) =>
      TextStyle(
        fontSize: fontSize ?? 116,
        fontWeight: FontWeight.w500,
        fontFamily: 'Helvetica Neue',
        color: color,
      );

  static TextStyle section({
    Variants? variant,
    Color? color,
    double? fontSize,
  }) {
    switch (variant) {
      case Variants.variantOne:
        return _sectionVariantOne(color: color, fontSize: fontSize);
      case Variants.variantTwo:
        return _sectionVariantTwo(color: color, fontSize: fontSize);
      case _:
        return _sectionVariantOne(color: color, fontSize: fontSize);
    }
  }

  static TextStyle statement({
    Variants? variant,
    Color? color,
    double? fontSize,
  }) =>
      TextStyle(
        fontSize: fontSize ?? 116,
        fontWeight: FontWeight.w500,
        fontFamily: 'Helvetica Neue',
        color: color,
      );

  static TextStyle _factVariantOne({
    Color? color,
    double? fontSize,
  }) =>
      TextStyle(
        fontSize: fontSize ?? 224,
        fontWeight: FontWeight.w600,
        fontFamily: 'Graphik',
        color: color,
      );

  static TextStyle _factVariantTwo({Color? color, double? fontSize}) =>
      TextStyle(
        fontSize: fontSize ?? 250,
        fontWeight: FontWeight.w700,
        fontFamily: 'Helvetica Neue',
        color: color,
      );

  static TextStyle fact({
    Variants? variant,
    Color? color,
    double? fontSize,
  }) {
    switch (variant) {
      case Variants.variantOne:
        return _factVariantOne(color: color, fontSize: fontSize);
      case Variants.variantTwo:
        return _factVariantTwo(color: color, fontSize: fontSize);
      case _:
        return _factVariantOne(color: color, fontSize: fontSize);
    }
  }

  static TextStyle _quoteVariantOne({
    Color? color,
    double? fontSize,
  }) =>
      TextStyle(
        fontSize: fontSize ?? 84,
        fontWeight: FontWeight.w600,
        fontFamily: 'Graphik',
        color: color,
      );

  static TextStyle _quoteVariantTwo({Color? color, double? fontSize}) =>
      TextStyle(
        fontSize: fontSize ?? 85,
        fontWeight: FontWeight.w500,
        fontFamily: 'Helvetica Neue',
        color: color,
      );

  static TextStyle quote({
    Variants? variant,
    Color? color,
    double? fontSize,
  }) {
    switch (variant) {
      case Variants.variantOne:
        return _quoteVariantOne(color: color, fontSize: fontSize);
      case Variants.variantTwo:
        return _quoteVariantTwo(color: color, fontSize: fontSize);
      case _:
        return _quoteVariantOne(color: color, fontSize: fontSize);
    }
  }

  static TextStyle _attributionVariantOne({
    Color? color,
    double? fontSize,
  }) =>
      TextStyle(
        fontSize: fontSize ?? 44,
        fontWeight: FontWeight.w500,
        fontFamily: 'Graphik',
        color: color,
      );

  static TextStyle _attributionVariantTwo({Color? color, double? fontSize}) =>
      TextStyle(
        fontSize: fontSize ?? 36,
        fontWeight: FontWeight.w700,
        fontFamily: 'Helvetica Neue',
        color: color,
      );

  static TextStyle attribution({
    Variants? variant,
    Color? color,
    double? fontSize,
  }) {
    switch (variant) {
      case Variants.variantOne:
        return _attributionVariantOne(color: color, fontSize: fontSize);
      case Variants.variantTwo:
        return _attributionVariantTwo(color: color, fontSize: fontSize);
      case _:
        return _attributionVariantOne(color: color, fontSize: fontSize);
    }
  }
}
