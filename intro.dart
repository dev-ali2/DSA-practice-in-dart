void main() {
  {
    // linear Time Complexity T.C
    List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    arr[0] = arr[0] + 10; //? this is constant so T.C O(1)

    for (int i = 0; i < arr.length; i++) {
      //? linear because depends on length of array O(n)
      //print(arr[i]);
    }
    //? so O(1) + O(n) = O(n) because constant is smaller and ignored when linear is present
    //? space C will be O(1)
    //? if we want to store that array in new array S.C will be O(n)
  }
  // Log complexity (log n )
  {
    //? ex binary search algo
    List<int> arr = [
      2,
      5,
      10,
      15,
      17,
      20,
      21,
      29,
      31,
      34
    ]; //? array should be sorted

    int start = 0;
    int end = arr.length - 1;

    while (start <= end) {
      // print(count);
      int mid = ((start + end) / 2).toInt();
      if (arr[mid] == 20) {
        // print('e found ');
        break;
      } else if (arr[mid] > 20) {
        end = mid - 1;
      } else {
        start = mid + 1;
      }
    }
  }
  // quad complexity O(n^2)
  {
    List<int> arr = [1, 2, 3, 5, 9, 0, 7, 9, 8, 4, 6];
    //will find a pair which makes 9
    int target = 9;
    for (int i = 0; i < arr.length; i++) {
      // O(n)
      for (int j = i + 1; j < arr.length; j++) {
        //O(n)
        if (arr[i] + arr[j] == target) {
          print('Pair found as ${arr[i]} + ${arr[j]}');
        }
      }
    }
    //? here second O(n) runs for every first O(n) so it becomes O(n^2) and its not good algo
  }
}
