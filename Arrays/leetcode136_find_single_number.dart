// in this problem we have to find a number that has only one occurence in the given array
//like in an array [1,4,5,2,4] the output should be 1

void main() {
  List<int> arr = [9, 2, 6, 2, 6];
  int result = 0;

  for (int num in arr) {
    // we using here xor operation because xor of same number like 2 ^ 2 will give 0
    // it works similar to like we add +3 and -3 in an equation, they cancel out
    result = result ^ num;
  }
  print(result); //9
}
