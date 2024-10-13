import 'dart:io';

void main() {
  int? num;
  String out = '';
  print('Enter no');
  num = int.parse(stdin.readLineSync()!);
  int num2 = num;
  while (num! > 0) {
    int rem = num % 2;
    num = (num / 2).toInt();
    out = rem.toString() + out;
  }

  print('output $out');
  // below is converting to binary using bitwise operation
  decimalToBinary(num2);
}

void decimalToBinary(int no) {
  String temp = '';
  print('Performing bitwise operation now...');
  while (no != 0) {
    temp = (no & 1).toString() + temp;
    no = no >> 1;
  }
  print('value from bitwise operation is $temp');
}
