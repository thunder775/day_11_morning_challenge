// Challenge 1
// Create a function that returns the total number of steps it takes to transform each element to the maximal element in the list.
// Each step consists of incrementing a digit by one.
// Examples
// incrementToTop([3, 4, 5]) ➞ 3
// 3 increments: 3 -> 4, 4 -> 5; 4 -> 5
// incrementToTop([4, 3, 4]) ➞ 1
// incrementToTop([3, 3, 3]) ➞ 0
// incrementToTop([3, 10, 3]) ➞ 14
import 'dart:math';

int incrementToTop(List<int> list) {
  int x = list.reduce(max);
  int count = 0;

  for (int m in list) {
    while (m != x) {
      m++;
      count += 1;
    }
  }
  return count;
}

// Challenge 2
// In BlackJack, cards are counted with -1, 0, 1 values:
//
//  - 2, 3, 4, 5, 6 are counted as +1
//  - 7, 8, 9 are counted as 0
//  - 10, J, Q, K, A are counted as -1
//  Create a function that counts the number and returns it from the list of cards provided.
//  count([5, 9, 10, 3, "J", "A", 4, 8, 5]) ➞ 1
//
//  count(["A", "A", "K", "Q", "Q", "J"]) ➞ -6
//
//  count(["A", 5, 5, 2, 6, 2, 3, 8, 9, 7]) ➞ 5
int count(List list) {
  int count = 0;
  for (var m in list) {
    if (m == 2 || m == 3 || m == 4 || m == 5 || m == 6) {
      count += 1;
    } else if (m == 7 || m == 8 || m == 9) {
      count += 0;
    } else if (m == 10 || m == 'J' || m == 'Q' || m == 'K' || m == 'A') {
      count -= 1;
    }
  }
  return count;
}

// Challenge 3
// Write a test case each for previous two functions you wrote

main() {
  print(incrementToTop([1, 2, 7]));
  print(count([5, 9, 10, 3, "J", "A", 4, 8, 5]));
}
