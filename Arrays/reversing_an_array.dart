//this is optimized solution which take space complexity O(1)
void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  int i = 0;
  int j = arr.length - 1;

  while (i < j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
    i++;
    j--;
  }
  print(arr);
}
