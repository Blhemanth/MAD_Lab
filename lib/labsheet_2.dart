import 'dart:io';

void main() {
  while (true) {
    print('\n--- SHAPE GENERATOR ---');
    print('1. Right Triangle');
    print('2. Number Triangle');
    print('3. Square');
    print('4. Pyramid');
    print('5. Inverted Right Triangle');
    print('6. Exit');
    stdout.write('Enter your choice (1-6): ');

    String? input = stdin.readLineSync();
    int? choice = int.tryParse(input ?? '');

    if (choice == null) {
      print('Invalid input. Please enter a valid number.');
      continue;
    }

    if (choice == 6) {
      print('Exiting program. Goodbye!');
      break;
    } else if (choice < 1 || choice > 6) {
      print('Please choose a number between 1 and 6.');
      continue;
    }

    stdout.write('Enter the size/rows: ');
    int rows = int.tryParse(stdin.readLineSync() ?? '') ?? 5;

    switch (choice) {
      case 1:
        for (int i = 1; i <= rows; i++) {
          print('* ' * i);
        }
        break;

      case 2:
        for (int i = 1; i <= rows; i++) {
          String line = '';
          for (int j = 1; j <= i; j++) {
            line += '$j ';
          }
          print(line);
        }
        break;

      case 3:
        for (int i = 0; i < rows; i++) {
          print('* ' * rows);
        }
        break;

      case 4:
        for (int i = 1; i <= rows; i++) {
          String spaces = ' ' * (rows - i);
          String stars = '* ' * i;
          print(spaces + stars);
        }
        break;

      case 5:
        for (int i = rows; i >= 1; i--) {
          print('* ' * i);
        }
        break;

      default:
        print('Unexpected error.');
    }
  }
}