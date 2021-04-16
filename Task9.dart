void main(List<String> args) {
  String a = "xyaabbbccccdefww";
  String b = "xxxxyyyyabklmopq";
  print(longest(a, b));
}

String longest(String a, String b) {
  StringBuffer temp = StringBuffer();
  List<String> a_List = a.split('');
  List<String> b_List = b.split('');
  Set<String> a_Set = a_List.toSet();
  Set<String> b_Set = b_List.toSet();
  Set<String> union = a_Set.union(b_Set);
  List<String> sorted = union.toList();
  sorted.sort();
  sorted.forEach((element) => temp.write(element));
  return temp.toString();
}
