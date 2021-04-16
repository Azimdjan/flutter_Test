void main() {
  Set<int> a = {12, 32, 324, 123, 12, 343, 2, 34, 5};
  Set<int> b = {32, 21, 432, 54, 32, 2, 4, 21, 1, 12, 45, 5};
  Set<int> c = a.union(b);
  print(c);
}
