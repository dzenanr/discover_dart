// former Interfaces for Simple Mocking

import 'superhero.dart';

greeter(Hero hero) {
  hero.sayHello(); 
}

class MockHero implements Hero {
  String name;
  List powers;
  
  sayHello() => print("Yes, we're in a mock");
}

main() {
  greeter(new MockHero());      
  greeter(new Hero("The Dart")); 
}