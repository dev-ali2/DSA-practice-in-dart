import 'dart:io';
import 'dart:math';

void main() {
  //converting decimal to binary using bitwise operation
  print('enter no');
  int no = int.parse(stdin.readLineSync()!);
  int decimal = 0;
  int index = 0;
  while (no != 0) {
    int lastDigit = no % 10;

    if (lastDigit == 1) {
      decimal = decimal + pow(2, index).toInt();
    }
    index++;
    no = (no / 10).toInt();
  }
  print('decimal is $decimal');
}
