//a number will be given and we have to find which two numbers sum up to give the provided number and provide the index of both of these found numbers from array

void main() {
  int target = 9;
  List<int> arr = [1, 2, 5, 6, 8];

  // Below solution is ok but has O(n^2) which is not good
  naiveSolution(arr, target);
  optimizedSolution(arr, target);
}

void naiveSolution(List<int> arr, int target) {
  List<int> numbersIndexes = [];

  for (int i = 0; i < arr.length; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      if (target == arr[i] + arr[j]) {
        numbersIndexes.addAll([i, j]);
      }
    }
  }
  print('From naive solution $numbersIndexes');
}

void optimizedSolution(List<int> arr, int target) {
  List<int> numbersIndexes = [];
  Map<int, int> map = {};
  for (int i = 0; i < arr.length; i++) {
    int targetNum = target - arr[i];
    if (map.containsKey(targetNum)) {
      numbersIndexes.addAll([map[targetNum] ?? -1, i]);
    } else {
      map.addAll({arr[i]: i});
    }
  }
  print('from optimized solution $numbersIndexes');
}
