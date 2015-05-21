/**
 * To introduce the Future.delayed constructor.
 * To explain that you have to do something with a Future object,
 * a transition to the use of then.
 */
 
import 'dart:async';

class Character {
  String name;
  bool brave = false; 
  
  Character(this.name);
  
  Future encourage() {
    // return new Future.________(new Duration(seconds: 1), () { <- delayed
    return new Future.delayed(new Duration(seconds: 1), () {
      brave = true; 
    });
  }
}

void main() {
  print('begin main');
  var character = new Character('Mild-mannered reporter');
  print('brave: ${character.brave}');
  print(character.encourage());
  print('end main');
}