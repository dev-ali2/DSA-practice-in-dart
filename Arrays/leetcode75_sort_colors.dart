// in this problem we will be given 3 colors or say 3 values 0, 1, 2 and we need to sort them in ascending order but in one pass like [1,0,0,1,2,0,2,2] will become [0,0,0,1,1,2,2,2]

void main() {
  List<int> arr = [1, 0, 0, 1, 2, 0, 2, 2];
  //below solution is ok but we need to make it in one pass or say in one loop only
  //making a count for each numbers
  naiveSolution(arr);
  optimizedSolution(arr);
}

void optimizedSolution(List<int> arr) {}

void naiveSolution(List<int> arr) {
  int zeros = 0;
  int ones = 0;
  int twos = 0;
  List<int> sortedArray = [];
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == 0) {
      zeros++;
    } else if (arr[i] == 1) {
      ones++;
    } else {
      twos++;
    }
  }
  while (zeros > 0) {
    sortedArray.add(0);
    zeros--;
  }
  while (ones > 0) {
    sortedArray.add(1);
    ones--;
  }
  while (twos > 0) {
    sortedArray.add(2);
    twos--;
  }
  print('Previous array $arr');
  print('sorted array from multiple loops $sortedArray');
}
