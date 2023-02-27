import 'dart:io';

void main() {
  // Q1: Write a program to find the factorial of any number entered using for loop.
  print("answer 1");
  print('Enter n');
  int n = int.parse(stdin.readLineSync()!);

  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }

  print('Factorial of $n');
  print(result);
// Q2: Create a list of numbers and find highest number from this list.
  print("answer 2");
  List mylist = [8, 7, 18, 9, 12, 4];
  num highest = mylist[0];
  for (var i = 0; i <= mylist.length - 1; i++) {
    if (highest < mylist[i]) {
      highest = mylist[i];
    }
  }
  print("highest number of the list is $highest");
// Q2: Create a list of numbers and find highest number from this list.
  print("answer 3");
  List myList = [];
  print("the first 10 number of the list is:");
  for (var i = 0; i <= 9; i++) {
    myList.add(i * 3);
  }
  print("the series :$mylist");
//   Q4: Write a program to print the following:
// i)
// **********
// **********
// **********
// **********
  print("answer 4a");
  for (var i = 0; i <= 3; i++) {
    print("**********");
  }
//  ii)
// *
// **
// ***
// ****
// *****
  print("answer 4b");
  String astaric = "*";
  for (var i = 1; i <= 5; i++) {
    print(astaric * i);
  }
//   iv)
// *
// ***
// *****
// *******
// *********

  print("answer 4c");
  for (var i = 1; i <= 10; i = i + 2) {
    print(astaric * i);
  }
//   1
// 222
// 33333
// 4444444
// 555555555
  print("answer 4d");
  for (var i = 1; i <= 5; i++) {
    print('${i}' * (2 * i - 1));
  }
  // Q5: Write a program to find sum of all odd numbers between 1 to 100.
  print("answer 5");
  List odd = [];
  for (var i = 1; i <= 100; i++) {
    if (i % 2 != 0) {
      odd.add(i);
    }
  }
  print(odd);
  // Q6: Write a program to revere a list of numbers. Program should be write using for loop only, .reversed keyword is not allowed.
  print("answer 6");
  List mylist1 = [12, 34, 56, 16, 89, 67, 43];
  List reverse = [];
  for (var i = mylist1.length - 1; i >= 0; i--) {
    reverse.add(mylist1[i]);
  }
  print(mylist1);
  print("reverse of the list:$reverse");
  // Q7: Write a program to print Fibonacci Series upto 100 using for loop only.
  print("answer 7");
  List fabonacii = [0, 1];
  num previous = 0;
  num next = 1;
  var series;
  for (var i = 0; i <= 20; i++) {
    series = previous + next;
    fabonacii.add(series);
    previous = next;
    next = series;
    if (series > 100) {
      fabonacii.removeLast();
      break;
    }
  }
  print("fabonacii series is :$fabonacii");
// Q8: Write a program to sort a list of numbers. Program should be write using for loop only, .sort keyword is not allowed.
  print("answer 8");
  List unsorted = [12, 34, 56, 16, 89, 67, 43];
  var swap;
  List sorted = [];
  for (var i = 0; i <= unsorted.length - 1; i++) {
    for (var j = 0; j <= unsorted.length - 2; j++) {
      if (unsorted[j] > unsorted[j + 1]) {
        swap = unsorted[j];
        unsorted[j] = unsorted[j + 1];
        unsorted[j + 1] = swap;
        sorted = unsorted;
      }
    }
  }
  print("unsorted data:$unsorted");
  print("sorted data is : $sorted");
}
