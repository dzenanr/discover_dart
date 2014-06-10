class Hero {
  String name = '';
  String toString() => name;
}

main() {
  var hero = new Hero();  // the default constructor in action
  hero.name = 'The Dart';
  print("My Hero is $hero");
}




