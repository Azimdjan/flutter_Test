import 'dart:io';

void main() {
  stdout.write("Please enter number: ");
  String number = stdin.readLineSync()!;
  (Strong(number))
      ? print("Number is Strong.")
      : print("Number is not Strong.");
}

bool Strong(String number) {
  bool isStrong = false;
  int original = int.parse(number);
  List<String> str_numbers = number.split('');
  List<int> numbers = [];
  str_numbers.forEach((element) => numbers.add(int.parse(element)));
  int sum = numbers.reduce((value, element) => value + factorial(element));
  if (sum == original) {
    isStrong = true;
  }
  return isStrong;
}

int factorial(int number) {
  int sum = 1;
  for (int i = 1; i <= number; i++) {
    sum *= i;
  }
  return sum;
}
