import 'dart:io';

void main() {
  stdout.write('Input name: \n');
  String? name = stdin.readLineSync();

  stdout.write('Input Pet name: \n');
  String? petName = stdin.readLineSync();

  // Defining purpose
  print(
    'This is a calculator for whichever arithmetic function you choose under BODMAS \n',
  );

  print('--------------------------------------\n');

  //collecting figures for calculation
  stdout.write('Input value one: ');
  int a = int.parse(stdin.readLineSync()!);

  stdout.write('Input value two: ');
  int b = int.parse(stdin.readLineSync()!);

  stdout.write('input opertation type(+,-,*,/): \n');
  String? operation = stdin.readLineSync();

  var solution = switch (operation) {
    '+' => a + b,
    '-' => a - b,
    '/' => a / b,
    '*' => a * b,
    _ => 'unknown input', //default fallback
  };

  print('$petName, you thought i would call you by your actual name? lol.');
  print('sha your answer is $solution');
}
