import 'dart:io';

void main() {
  stdout.write("Please enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= number / 2; i++) {
    if (number % i == 0) {
      stdout.write("$i ");
    }
  }
}
