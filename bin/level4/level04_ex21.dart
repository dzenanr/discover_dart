class Character {
  String name;
}

// class Hero ________ { <- extends Character
class Hero extends Character {
  bool hasCape = true;

  Hero(String name) {
    this.name = name;
  }

  sayHello() => print("I am an $this and my name is $name");
}

main() {
  var steve = new Hero("The Dart");
  steve.sayHello();
}
