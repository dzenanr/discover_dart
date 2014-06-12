/**
 * To show the use of then, in order to register a callback when a future completes.
 */

import 'dart:async';

class Character {
  String name;
  bool brave = false;
  
  Character(this.name) {
    if (name.contains("Dart")) {
      brave = true;
    } 
  }
  
  Future encourage() {
    return new Future.delayed(new Duration(seconds:1), () {
      brave = true; 
    });
  }
}

main() {
  print('begin main');
  var character = new Character('Mild-mannered Reporter');
  print('brave: ${character.brave}');
  // character.encourage().________((d) => print('brave: ${character.brave}')); <- then
  character.encourage().then((d) => print('brave: ${character.brave}'));
  print('end main');
}