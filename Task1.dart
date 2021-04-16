import 'dart:io';

void main() {
  stdout.write("Please enter your name: ");
  final String name = stdin.readLineSync()!;
  stdout.write("Please enter your age: ");
  final int age = int.parse(stdin.readLineSync()!);
  int years = 100 - age;
  print("$name After $years you will be 100 years old.");
}
