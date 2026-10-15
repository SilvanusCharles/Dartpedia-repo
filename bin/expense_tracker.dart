import 'dart:io';

void main() {
  stdout.write('input number of items: \n');
  int? numberOfItems = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < numberOfItems; i++) {
    stdout.write('input item name: \n');
    String? itemName = stdin.readLineSync();

    stdout.write('input item price: \n');
    double? itemPrice = double.parse(stdin.readLineSync()!);

    print('item name is $itemName and item price is $itemPrice');
  }
}
