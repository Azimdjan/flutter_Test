void main() {
  List<int> numbers = [12, 23, 435, 23, 432, 23, 312, 341, 2, 3, 2];
  print(sorted_List(numbers));
}

List<int> sorted_List(List<int> list) {
  List<int> sorted = [];
  List<int> men = Men(list);
  List<int> boys = Boys(list);
  men.sort();
  boys.sort((a, b) => b.compareTo(a));
  for (var person in men) {
    sorted.add(person);
  }
  for (var person in boys) {
    sorted.add(person);
  }
  return sorted;
}

List<int> Men(List<int> list) {
  List<int> even = [];
  for (var element in list) {
    if (element % 2 == 0) even.add(element);
  }
  return even;
}

List<int> Boys(List<int> list) {
  List<int> odds = [];
  for (var element in list) {
    if (element % 2 != 0) odds.add(element);
  }
  return odds;
}
