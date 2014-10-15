class Character {
  String name;
}

// class Hero ________ { <- extends Character
class Hero extends Character {
  bool hasCape = true;
  // constructor
  Hero(name) {
    this.name = name;
  }

  sayHello() => print("I am a ${this.runtimeType} and my name is $name");
}

main() {
  var steve = new Hero("The Dart");
  steve.sayHello();
}
