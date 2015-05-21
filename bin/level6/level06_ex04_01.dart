/**
 * To show the use of await within the async function.
 * When the await completes, the print follows.
 */

import 'dart:async';

class Character {
  String name;
  bool brave = false;
  
  Character(this.name);
  
  Future<bool> encourage() {
    return new Future.delayed(new Duration(seconds: 1), () {
      return brave = true; 
    });
  }
}

// Future main() ________ { <- async
Future main() async {
  print('begin main');
  var character = new Character('Mild-mannered reporter');
  print('brave: ${character.brave}');
  // var b = ________ character.encourage(); <- await
  var b = await character.encourage();
  print('brave: $b');
  print('end main');
}