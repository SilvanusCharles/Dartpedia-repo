import 'dart:math';
import 'dart:io';

void main() {
  final random = Random();

  //formula for random
  int min = 1;
  int max = 100;
  int randomRange = random.nextInt(max - min + 1) + min;

  print('-------CAN YOU GUESS THE NUMBER I PICKED--------\n');
  stdout.write('input Guess from 1-100: \n');
  int guess = int.parse(stdin.readLineSync()!);

  if (guess == randomRange) {
    print('Bingo');
  } else if (guess > randomRange) {
    print('too high mate');
  } else if (guess < randomRange) {
    print('too low');
  } else {
    print('tf is that mate?');
  }

  print('the number is $randomRange');
}
