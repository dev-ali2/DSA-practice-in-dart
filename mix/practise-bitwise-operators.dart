void main() {
  // first learning how bitwise operators work
  int n1 = 3;
  int n2 = 5;
  // this will first convert these numbers in binary then use and operator and return the decimal value of calculated binary
  print('a & b : ${n1 & n2}');
  // this will first convert these numbers in binary then use OR operator and return the decimal value of calculated binary
  print('a | b : ${n1 | n2}');
  // this will first convert the number in binary then use Nor operator and takes 2s complement and return the decimal value
  print('~a : ${~n1}');
  print('~b : ${~n2}');
  // this will first convert the numbers in binary then use Xor operator
  print('a ^ b : ${n1 ^ n2}');
  //? below are bit shiftins
  // left shift
  print('left shifted a ${n1 << 1}');
  print('left shifted b ${n2 << 1}');
  //right shift
  print('right shifted a ${n1 >> 1}');
  print('right shifted b ${n2 >> 1}');
}
