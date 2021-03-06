class Character {
  String name;
  
  sayHello() => print("I am an $this and my name is $name");
}

class Hero extends Character {
  bool hasCape = true;

  Hero(name) {
    this.name = name;
  }
  
  // ________; <- sayHello() => print("My name is $name and I am awesome")
  sayHello() => print("My name is $name and I am awesome");
}

class Villain extends Character {
  bool isEvilGenius = false;

  Villain(name) {
    this.name = name;
  }
}

main() {
  var steve = new Hero("The Dart");
  var joe = new Villain("Dr Slow");
  steve.sayHello();
  joe.sayHello();
}
