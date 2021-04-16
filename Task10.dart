void main() {
  String someMessage = "xxooxxoXo";
  print(Check(someMessage));
}

bool Check(String temp) {
  bool same = false;
  int numberOfX = 0;
  int numberOfO = 0;
  for (var element in temp.runes) {
    if (element == 120 || element == 88)
      numberOfX++;
    else if (element == 111 || element == 79) numberOfO++;
  }
  if (numberOfX == numberOfO) {
    same = true;
  }
  return same;
}
