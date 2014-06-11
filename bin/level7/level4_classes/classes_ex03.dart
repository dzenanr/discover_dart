// former Interfaces

class Hero {
  String name;
  List powers;
     
  Hero(this.name);
}

class Villain {
  String name;
     
  Villain(this.name);
}

checkChar(char) => char.name.contains("Dart") ? "Hero" : "Villain";

main() {
  print(checkChar(new Hero("The Dart")));
  print(checkChar(new Villain("Dr Slow"))); // villain is not a hero
}




