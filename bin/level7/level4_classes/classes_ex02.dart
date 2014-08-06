// Level07_4_ex02

abstract class Greeting {
  sayHello();
}

class Character implements Greeting {
  String name;
  
  Character(name) {
    this.name = name;
  }
}

main() {
  var steve = new Character("The Dart");
  var joe = new Character("Dr Slow");
  steve.sayHello();
  joe.sayHello();
}