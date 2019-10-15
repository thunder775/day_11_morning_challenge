import 'package:test/test.dart';

import 'main.dart';

void main() {
  test('Increment To Top', () {
    expect(incrementToTop([4, 3, 4]), 1);
  });

  test('count', () {
    expect(count(["A", "A", "K", "Q", "Q", "J"]), -6);
  });
}
