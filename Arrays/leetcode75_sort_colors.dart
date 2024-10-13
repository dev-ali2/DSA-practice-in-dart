// in this problem we will be given 3 colors or say 3 values 0, 1, 2 and we need to sort them in ascending order but in one pass like [1,0,0,1,2,0,2,2] will become [0,0,0,1,1,2,2,2]

void main() {
  List<int> arr = [2, 0, 2, 1, 1, 0];
  //below solution is ok but we need to make it in one pass or say in one loop only
  //making a count for each numbers
  print('Previous array $arr');
  naiveSolution(arr);
  optimizedSolution(arr);
}

void optimizedSolution(List<int> arr) {
  int low = 0, high = arr.length - 1, i = 0;
// using two pointers approach in which low starts from 0 index and high starts backwards from last index
// i will iterate in linear way and will handle values 0 and 2
// eg if value at i index is 0, it shifts it left with low index value and if value at i index is 2, it will shift the value with the high index value ignoring value of 1 at i index so that 1 will always remain in the middle position
  while (i <= high) {
    if (arr[i] == 1) {
      //IGNORE
      i++;
    } else if (arr[i] == 0) {
      int temp = arr[i];
      arr[i] = arr[low];
      arr[low] = temp;
      i++;
      low++;
    } else {
      int temp = arr[i];
      arr[i] = arr[high];
      arr[high] = temp;
      high--;
      i++;
    }
  }

  print('Sorted array from optimized solution $arr');
}

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

  print('sorted array from multiple loops $sortedArray');
}
