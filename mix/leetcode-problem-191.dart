// this is a leet code problem in which a number in decimal will be given and i have to return the number of 1 in its decimal value
// like if 4 is given its binary will be 100 so answer will be 1, let say if binary is 11010 then answer will be 3
void main() {
  //!solution 1 by converting decimal to bimary and running a loop
  int n = 10;
  String s = '';
  while (n > 0) {
    int rem = n % 2;
    n = (n / 2).toInt();
    s = rem.toString() + s;
  }
  s = s.trim();
  print(s);
  int count = 0;
  for (int i = 0; i < s.length; i++) {
    if (s[i] == '1') {
      count++;
    }
  }
  print('no of 1 from first method is $count');

  //! solution with using bitswap method
  int count2 = 0;
  int n2 = 10;
  while (n2 != 0) {
    if (n2 & 1 ==
        1) // because if there is 1 at last, and operator will give 1 else 0 with it

    {
      count2++;
    }
    n2 = n2 >>
        1; // this emoves the last bit and store the decimal value of new binary number
  }
  print('no of 1 from second method is  $count2');
}
