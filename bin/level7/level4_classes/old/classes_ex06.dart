// former Mixins

class Flight {
  takeOff() => print("I am flying");
  land() => print("Landed safely");
}

class XrayVision {
  watch(SecretIdentity other) => print("I see how you work, ${other.name}");
}

class SecretIdentity {
  String name;
}

abstract class Character implements SecretIdentity {  
  String name;
  
  sayHello() => print("I am an $this and my name is $name");
}

class Hero extends Character with Flight, XrayVision {
  bool hasCape = true;

  Hero(name) {
    this.name = name;
  }

  sayHello() {
    super.sayHello();
    print("My name is $name and I am awesome");
  }
}

// class Villain extends Character ________ { <- with XrayVision
class Villain extends Character with XrayVision {
  bool isEvilGenius = false;
  
  Villain(name) {
    this.name = name;
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


