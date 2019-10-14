import 'package:test/test.dart';
import 'main.dart';

void main() {
  test("test case 1", () {
    expect(evenOddTransform([1, 2, 3], 1), [3, 0, 5]);
    expect(evenOddTransform([3, 4, 9], 3), [9, -2, 15]);
  });

  test("test case 2", () {
    expect(longestZero("01100001011000"), "0000");
    expect(longestZero("100100100"), "00");
  });
}
