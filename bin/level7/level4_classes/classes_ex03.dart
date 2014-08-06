// Level07_4_ex03

abstract class Greeting {
  sayHello();
}

// ________ class Character implements Greeting { <- abstract
abstract class Character implements Greeting {
  String name;
}

class Hero extends Character {
  bool hasCape = true;

  Hero(name) {
    this.name = name;
  }
  
  sayHello() { 
    print("My name is $name and I am awesome.");
  }
}

class Villain extends Character {
  bool isEvilGenius = false;

  Villain(name) {
    this.name = name;
  }
  
  sayHello() { 
    print("My name is $name and I am mean.");
  }
}

main() {
  var steve = new Hero("The Dart");
  var joe = new Villain("Dr Slow");
  steve.sayHello();
  joe.sayHello();
}