//removing an element in array at given index

void main() {
  List<int> arr = [1, 3, 5, 7, 9, 11];
  const int removeAt = 2;
  int currentIndex = 0;

  for (int i = removeAt; i < arr.length - 1; i++) {
    //using arr.length -1 because else the right index when using i + 1 will go out of boundary
    //starting from index because we do not care about previous values
    //worst case would be 0 index and O(1) will be last index because at 0 index, we need to shift all elements to left
    currentIndex = i;
    arr[i] = arr[i + 1];
  }
  currentIndex += 1;
  //adding 1 because value of i was less
  // currentIndex is used to make last element 0 to avoid duplicate enteries
  arr[currentIndex] = 0;
  print(arr);
}
