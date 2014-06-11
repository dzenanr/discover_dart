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

checkChar(Villain villain) => villain.name.contains("Dart") ? "Hero" : "Villain";

main() {
  checkChar(new Hero("The Dart"));
  checkChar(new Villain("Dr Slow")); // villain is not a hero
}




