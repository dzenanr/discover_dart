// Level07_4_ex04

abstract class Flight {
  takeOff() => print("I am flying.");
  land() => print("Landed safely.");
}

abstract class XrayVision {
  watch(Character other) => print("I see how you work, ${other.name}.");
}

abstract class Greeting {
  sayHello();
}

abstract class Character implements Greeting {
  String name;
}

class Hero extends Character with Flight, XrayVision {
  bool hasCape = true;

  Hero(name) {
    this.name = name;
  }
  
  sayHello() { 
    print("My name is $name and I am awesome.");
  }
}

class Villain extends Character with XrayVision {
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
  // steve.________; <- takeOff()
  steve.takeOff();
  joe.sayHello();
  // joe.________; <- watch(steve)
  joe.watch(steve);
}