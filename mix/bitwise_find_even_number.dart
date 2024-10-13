import 'dart:io';

void main() {
  print('Enter n');
  int n = int.parse(stdin.readLineSync()!);
  if (n & 1 == 0) {
    //? using bitwise and operator
    //? it first converts the decimal it binar and perform and operation if last bit becomes 0 then number is even else odd because all odd numbers in binary ends with 1
    print('even baby');
  } else {
    print('odd baby');
  }
}
