/**
 * To show the use of then, in order to register a callback when a future completes.
 */

import 'dart:async';

class Character {
  String name;
  bool brave = false;
  
  Character(this.name);
  
  Future encourage() {
    return new Future.delayed(new Duration(seconds:1), () {
      return brave = true; 
    });
  }
}

main() {
  print('begin main');
  var character = new Character('Mild-mannered Reporter');
  print('brave: ${character.brave}');
  // character.encourage().________((b) => print('brave: $b')); <- then
  character.encourage().then((b) => print('brave: $b'));
  print('end main');
}