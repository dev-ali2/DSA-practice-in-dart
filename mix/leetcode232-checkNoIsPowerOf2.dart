// this code is for checking a given number if it is present in any power of 2 using bitwise operation
import 'dart:io';

bool main() {
  print('enter no');
  int n = int.parse(stdin.readLineSync()!);
  if (n < 0) return false; // not applicable in negative integers
  while (n != 0) {
    int last = n & 1; //taking last binary bit
    n = n >> 1; // right shifting 1 bit
    if (last == 1 && n != 0) {
      // checking the shifted value again because digit that is power of 2 a only contains 1 one time in its binary
      // so if 1 is found and after right shifting, the value is still not 0, its not power of 2
      print('false');
      return false;
    }
  }
  print('true');
  return true;
}
