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

checkCharacter(Hero hero) => hero.name.contains("Dart") ? "Hero" : "Villain";

main() {
  checkCharacter(new Hero("The Dart"));
  checkCharacter(new Villain("Dr Slow")); // villain is not a hero
}




