/**
 * To react at the end of a Stream.
 */

import 'dart:async';

class Character {
  String name;
  bool brave = false;
  
  Character(this.name);
}

Stream<Character> watchCharacters(List<Character> characters) {
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

main() async {
  var characters = 
    [new Character("The Dart"), new Character("Prof. Polymer"), 
     new Character("Captain Dart"), new Character("Bullseye")]; 
  //var onCharacter = (c) => print('Just seen: ${c.name}');
  //var noMoreCharacters = () => print('No more characters');
  //var stream = watchCharacters(characters);
  // stream.listen(onCharacter, ________); <- onDone:noMoreCharacters
  //stream.listen(onCharacter, onDone:noMoreCharacters);
  await for (var character in watchCharacters(characters)) {
    print('Just seen ${character.name}.');
  }
  print('No more characters.');
}