import 'dart:io';

void main() {
  stdout.write("enter your name: \n");
  String? name = stdin.readLineSync();

  // age
  stdout.write('input your age: ');
  int age = int.parse(stdin.readLineSync()!);
  int yearSingle = age - 15;

  print('hello mr $name, you have been single for $yearSingle years');
}
