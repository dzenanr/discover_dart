
abstract class Greeting {
  sayHello();
}

// class Character ________ Greeting { <- implements
class Character implements Greeting {
  String name;
  
  Character(name) {
    this.name = name;
  }
  
  sayHello() { 
    print("My name is $name.");
  }
}

main() {
  var steve = new Character("The Dart");
  var joe = new Character("Dr Slow");
  steve.sayHello();
  joe.sayHello();
}