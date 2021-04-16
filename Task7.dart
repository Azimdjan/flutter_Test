import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Please enter card price: ");
  double card_Price = double.parse(stdin.readLineSync()!);
  stdout.write("Please enter ticket price: ");
  double ticket_Price = double.parse(stdin.readLineSync()!);
  stdout.write("Please enter percentage: ");
  double percentage = double.parse(stdin.readLineSync()!);
  int times = movie(card_Price, ticket_Price, percentage);
  print("You should go $times.");
}

int movie(double cardPrice, double ticket_Price, double percentage) {
  int times = 1;
  while (true) {
    double system_A = (ticket_Price * times);
    double additional = 0.0;
    for (int i = 0; i < times; i++) {
      additional += (additional * percentage);
    }
    double system_B = additional + cardPrice;
    double diff = 0.0;
    if (system_B > system_A) {
      diff = system_B - system_A;
    } else {
      diff = system_A - system_B;
    }
    if (diff >= 0 && diff < 1) {
      break;
    }
    times++;
  }
  return times;
}
