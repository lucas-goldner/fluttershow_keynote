import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_keynote/model/enum/variants.dart';

void main() {
  test('test variantOne has the correct variant value', () {
    expect(Variants.variantOne.variant, equals(1));
  });

  test('test variantTwo has the correct variant value', () {
    expect(Variants.variantTwo.variant, equals(2));
  });
}
