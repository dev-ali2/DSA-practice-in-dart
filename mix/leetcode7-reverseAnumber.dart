// in this problem we will be given an integer lets say 123 and we have to return 321 but as integer not string and if we get 310 we will be returning 13

void main() {
  // negative conditions are customly added
  print('Enter no');
  int res = 0;
  bool isNegative = false;
  int n = 123;
  if (n < 0) {
    n = n * -1;
    isNegative = true;
  }
  while (n != 0) {
    int last = n % 10;

    res = (res * 10) + last;
    n = (n / 10).toInt();
  }
  if (isNegative) {
    res = res * -1;
  }
  print('final res = $res');
}
