// former Interfaces

class SecretIdentity {
  String name;
}

// class Hero ________ { <- implements SecretIdentity
class Hero implements SecretIdentity {
  String name;
  List powers;
     
  Hero(this.name);
  
  sayHello() => print("I am an $this and my name is $name");
}

class Villain implements SecretIdentity {
  String name;
     
  Villain(this.name);
}

checkCharacter(SecretIdentity character) =>
    character.name.contains("Dart") ? "Hero" : "Villain";

main() {
  print(checkCharacter(new Hero("The Dart")));
  print(checkCharacter(new Villain("Dr Slow"))); // villain is not a hero
  
  var steve = new Hero("The Dart");
  steve.sayHello();
  print(steve is SecretIdentity); // true
  print(steve is Hero); // true
}




