import 'dart:math';

num randomNum(num max) {
  num random = new Random().nextDouble() * max;
  return random > max ? max : random;
}

int randomInt(int max) => new Random().nextInt(max);

randomListElement(List list) => list[randomInt(list.length - 1)];

main() {
  print('random num: ${randomNum(5.9)}');
  print('random int: ${randomInt(9)}');
  print('random list element: ${randomListElement(['a', 'b', 'c', 'd', 'e'])}');
}