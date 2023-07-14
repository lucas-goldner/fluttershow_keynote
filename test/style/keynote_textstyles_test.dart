import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';
import 'package:fluttershow_keynote/style/keynote_textstyles.dart';

void main() {
  group('KeynoteTextstyles', () {
    const Color testColor = Colors.red;
    const testFontSize = 24.0;

    test('test title returns correct TextStyle for variantOne', () {
      final textStyle = KeynoteTextstyles.title(
        variant: Variants.one,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w600));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
      expect(textStyle.wordSpacing, equals(0.9));
    });

    test('test title returns correct TextStyle for variantTwo', () {
      final textStyle = KeynoteTextstyles.title(
        variant: Variants.two,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w600));
      expect(textStyle.fontFamily, equals('Helvetica Neue'));
      expect(textStyle.color, equals(testColor));
      expect(textStyle.wordSpacing, equals(0.8));
    });

    test('test title returns correct TextStyle for unknown variant', () {
      final textStyle = KeynoteTextstyles.title(
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w600));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
      expect(textStyle.wordSpacing, equals(0.9));
    });

    test('test titleSmall returns correct TextStyle for variantOne', () {
      final textStyle = KeynoteTextstyles.titleSmall(
        variant: Variants.one,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w600));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test titleSmall returns correct TextStyle for variantTwo', () {
      final textStyle = KeynoteTextstyles.titleSmall(
        variant: Variants.two,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w600));
      expect(textStyle.fontFamily, equals('Helvetica Neue'));
      expect(textStyle.color, equals(testColor));
    });

    test('test titleSmall returns correct TextStyle for unknown variant', () {
      final textStyle = KeynoteTextstyles.titleSmall(
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w600));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test subtitle returns correct TextStyle for variantOne', () {
      final textStyle = KeynoteTextstyles.subtitle(
        variant: Variants.one,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w500));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test subtitle returns correct TextStyle for variantTwo', () {
      final textStyle = KeynoteTextstyles.subtitle(
        variant: Variants.two,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w700));
      expect(textStyle.fontFamily, equals('Helvetica Neue'));
      expect(textStyle.color, equals(testColor));
    });

    test('test subtitle returns correct TextStyle for unknown variant', () {
      final textStyle = KeynoteTextstyles.subtitle(
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w500));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test subtitleSmall returns correct TextStyle for variantOne', () {
      final textStyle = KeynoteTextstyles.subtitleSmall(
        variant: Variants.one,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w500));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test subtitleSmall returns correct TextStyle for variantTwo', () {
      final textStyle = KeynoteTextstyles.subtitleSmall(
        variant: Variants.two,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w700));
      expect(textStyle.fontFamily, equals('Helvetica Neue'));
      expect(textStyle.color, equals(testColor));
    });

    test('test subtitleSmall returns correct TextStyle for unknown variant',
        () {
      final textStyle = KeynoteTextstyles.subtitleSmall(
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w500));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test footer returns correct TextStyle for variantOne', () {
      final textStyle = KeynoteTextstyles.footer(
        variant: Variants.one,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w500));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test footer returns correct TextStyle for variantTwo', () {
      final textStyle = KeynoteTextstyles.footer(
        variant: Variants.two,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w700));
      expect(textStyle.fontFamily, equals('Helvetica Neue'));
      expect(textStyle.color, equals(testColor));
    });

    test('test footer returns correct TextStyle for unknown variant', () {
      final textStyle = KeynoteTextstyles.footer(
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w500));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test heading returns correct TextStyle for variantOne', () {
      final textStyle = KeynoteTextstyles.heading(
        variant: Variants.one,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w500));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test heading returns correct TextStyle for variantTwo', () {
      final textStyle = KeynoteTextstyles.heading(
        variant: Variants.two,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w700));
      expect(textStyle.fontFamily, equals('Helvetica Neue'));
      expect(textStyle.color, equals(testColor));
    });

    test('test heading returns correct TextStyle for unknown variant', () {
      final textStyle = KeynoteTextstyles.heading(
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w500));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test body returns correct TextStyle for variantOne', () {
      final textStyle = KeynoteTextstyles.body(
        variant: Variants.one,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w400));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test body returns correct TextStyle for variantTwo', () {
      final textStyle = KeynoteTextstyles.body(
        variant: Variants.two,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w400));
      expect(textStyle.fontFamily, equals('Helvetica Neue'));
      expect(textStyle.color, equals(testColor));
    });

    test('test body returns correct TextStyle for unknown variant', () {
      final textStyle = KeynoteTextstyles.body(
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w400));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test section returns correct TextStyle for variantOne', () {
      final textStyle = KeynoteTextstyles.section(
        variant: Variants.one,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w700));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test section returns correct TextStyle for variantTwo', () {
      final textStyle = KeynoteTextstyles.section(
        variant: Variants.two,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w500));
      expect(textStyle.fontFamily, equals('Helvetica Neue'));
      expect(textStyle.color, equals(testColor));
    });

    test('test section returns correct TextStyle for unknown variant', () {
      final textStyle = KeynoteTextstyles.section(
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w700));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test statement returns correct TextStyle for variantOne', () {
      final textStyle = KeynoteTextstyles.statement(
        variant: Variants.one,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w500));
      expect(textStyle.fontFamily, equals('Helvetica Neue'));
      expect(textStyle.color, equals(testColor));
    });

    test('test statement returns correct TextStyle for variantTwo', () {
      final textStyle = KeynoteTextstyles.statement(
        variant: Variants.two,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w500));
      expect(textStyle.fontFamily, equals('Helvetica Neue'));
      expect(textStyle.color, equals(testColor));
    });

    test('test statement returns correct TextStyle for unknown variant', () {
      final textStyle = KeynoteTextstyles.statement(
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w500));
      expect(textStyle.fontFamily, equals('Helvetica Neue'));
      expect(textStyle.color, equals(testColor));
    });

    test('test fact returns correct TextStyle for variantOne', () {
      final textStyle = KeynoteTextstyles.fact(
        variant: Variants.one,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w600));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test fact returns correct TextStyle for variantTwo', () {
      final textStyle = KeynoteTextstyles.fact(
        variant: Variants.two,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w700));
      expect(textStyle.fontFamily, equals('Helvetica Neue'));
      expect(textStyle.color, equals(testColor));
    });

    test('test fact returns correct TextStyle for unknown variant', () {
      final textStyle = KeynoteTextstyles.fact(
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w600));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

// Quote tests

    test('test quote returns correct TextStyle for variantOne', () {
      final textStyle = KeynoteTextstyles.quote(
        variant: Variants.one,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w600));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test quote returns correct TextStyle for variantTwo', () {
      final textStyle = KeynoteTextstyles.quote(
        variant: Variants.two,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w500));
      expect(textStyle.fontFamily, equals('Helvetica Neue'));
      expect(textStyle.color, equals(testColor));
    });

    test('test quote returns correct TextStyle for unknown variant', () {
      final textStyle = KeynoteTextstyles.quote(
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w600));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test attribution returns correct TextStyle for variantOne', () {
      final textStyle = KeynoteTextstyles.attribution(
        variant: Variants.one,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w500));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });

    test('test attribution returns correct TextStyle for variantTwo', () {
      final textStyle = KeynoteTextstyles.attribution(
        variant: Variants.two,
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w700));
      expect(textStyle.fontFamily, equals('Helvetica Neue'));
      expect(textStyle.color, equals(testColor));
    });

    test('test attribution returns correct TextStyle for unknown variant', () {
      final textStyle = KeynoteTextstyles.attribution(
        color: testColor,
        fontSize: testFontSize,
      );

      expect(textStyle.fontSize, equals(testFontSize));
      expect(textStyle.fontWeight, equals(FontWeight.w500));
      expect(textStyle.fontFamily, equals('Graphik'));
      expect(textStyle.color, equals(testColor));
    });
  });
}
