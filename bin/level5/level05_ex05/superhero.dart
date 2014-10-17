// superhero.dart
library superhero;

class Hero {
  String name;
  List powers;

  Hero(this.name);

  String toString() => "I am $name and I am here to save the day!";
}

powerUp(Hero hero) {
  print("bombard with more gamma rays");
}


