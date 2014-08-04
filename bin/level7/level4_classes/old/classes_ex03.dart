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

checkCharacter(char) => char.name.contains("Dart") ? "Hero" : "Villain";

main() {
  print(checkCharacter(new Hero("The Dart")));
  print(checkCharacter(new Villain("Dr Slow"))); // villain is not a hero
}




