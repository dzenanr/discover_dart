/**
 * //To show the use of then, in order to register a callback when a future completes.
 * 
 * To show the use of await within the async function.
 */

import 'dart:async';

class Character {
  String name;
  bool brave = false;
  
  Character(this.name);
  
  Future<bool> encourage() {
    return new Future.delayed(new Duration(seconds:1), () {
      return brave = true; 
    });
  }
}

main() async {
  print('begin main');
  var character = new Character('Mild-mannered reporter');
  print('brave: ${character.brave}');
  // character.encourage().________((b) => print('brave: $b')); <- then
  //character.encourage().then((b) => print('brave: $b'));
  // var b = ________ character.encourage(); <- await
  var b = await character.encourage();
  print('brave: $b');
  print('end main');
}