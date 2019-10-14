// Challenge 1
// Write a function that returns the longest sequence of consecutive zeroes in a binary string.
// Examples:
// longestZero("01100001011000") ➞ "0000"
//
// longestZero("100100100") ➞ "00"
//
// longestZero("11111") ➞ ""

import 'dart:math';

String longestZero(String x) {
  int count = 0;
  int highest = 0;
  for (int i = 0; i < x.length; i++) {
    if (x[i] == '0') {
      count++;
      highest = max(count, highest);
    } else {
      count = 0;
    }
  }
  String output = "";
  for (int i = 0; i < highest; i++) {
    output = output + '0';
  }
  return output;
}

// Challenge 2
// Create a function that performs an even-odd transform to an array, n times. Each even-odd transformation:
//
// 1. Adds two (+2) to each odd integer.
// 2. Subtracts two (-2) to each even integer.
// Examples:
// evenOddTransform([3, 4, 9], 3) ➞ [9, -2, 15]
// Since [3, 4, 9] => [5, 2, 11] => [7, 0, 13] => [9, -2, 15]
//
// evenOddTransform([0, 0, 0], 10) ➞ [-20, -20, -20]
//
// evenOddTransform([1, 2, 3], 1) ➞ [3, 0, 5]

List evenOddTransform(List<int> list, int n) {
  List<int> newList = [];
  for (int i = 0; i < list.length; i++) {
    if (list[i] % 2 != 0) {
      newList.add(list[i] + 2 * n);
    } else {
      newList.add(list[i] - 2 * n);
    }
  }
  return newList;
}

main() {
  print(evenOddTransform([3, 4, 9], 3));
  print(longestZero("100000101000000"));
}

// Challenge 3
// Write 2 test cases to test both the previous functions in test.dart
