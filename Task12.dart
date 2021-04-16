import 'dart:io';

void main() {
  Map<String, String> birthdays = {
    "Otajonov Azim": "24/01/2001",
    "Mirzokirov Mirorif": "20/09/2000",
    "Karimov Islom": "28/12/1983",
    "Nodirov Anvar": "12/12/2001"
  };
  print(">>>Welcome to the birthday dictionary. We know the birthdays of: ");
  for (var person in birthdays.keys) {
    print(person);
  }
  stdout.write("Please enter fullname of person: ");
  String person = stdin.readLineSync()!;
  String? person_Birthday = birthdays[person];
  print("$person 's birthday is $person_Birthday.");
}
