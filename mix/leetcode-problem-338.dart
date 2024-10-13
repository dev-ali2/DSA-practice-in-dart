// in this problem, you will be given a decimal no and you have to return 1s bis in all decimal numbers from 0 to that number like if n is 5 return array of number of 1s in 0,1,2,3,4,5
import 'dart:io';

void main() {
  //using bitwise operator
  print('enter number');
  int n = int.parse(stdin.readLineSync()!);

  List<int> arr = [];
  for (int i = 0; i <= n; i++) {
    int no = i;
    int count = 0;
    while (no > 0) {
      if (no & 1 == 1) {
        count++;
      }
      no = no >> 1;
    }
    arr.insert(i, count);
  }
  print('final array $arr');
}
