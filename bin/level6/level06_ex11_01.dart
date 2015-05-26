/**
 * To select sidekicks in a Stream.
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
  
  bool get hero => brave;  
  bool get sidekick => !hero;
}

Stream<Character> watchCharacters(List<Character> characters) async* {
  int index = 0;
  while (index < characters.length) {
    yield characters[index++];
  }
}

main() async {
  var characters = 
    [new Character("The Dart"), new Character("Prof. Polymer"), 
     new Character("Captain Dart"), new Character("Bullseye")]; 
  await for (var character in watchCharacters(characters)) {
    if (character.sidekick) {
      print('Just seen ${character.name}.');
    }
  }
  print('No more sidekicks.');
}