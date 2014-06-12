/**
 * To react at the end of a Stream.
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
}

Stream watchCharacters() {
  var characters = 
    [new Character("The Dart"), new Character("Prof. Polymer"), 
     new Character("Captain Dart"), new Character("Bullseye")]; 
  // Create a stream controller.
  var controller = new StreamController();  
  // Starting after 1 second, while not at the end of the list, 
  // add the next character into the stream.
  int index = 0; 
  new Timer.periodic(new Duration(seconds:1), (Timer t) {
    if (index < characters.length) {
      controller.add(characters[index++]);
    } else {
      // no more characters left
      t.cancel(); 
      controller.close();
     }
  });
  // Return the stream from the controller. 
  // This will happen before the timer's first one-second tick.
  return controller.stream;
}

main() {
  var onCharacter = (c) => print('Just seen: ${c.name}');
  var onNoMoreCharacters = () => print('No more characters');
  var stream = watchCharacters();
  // stream.listen(onCharacter, onDone: ________); <- onNoMoreCharacters
  stream.listen(onCharacter, onDone: onNoMoreCharacters);
}