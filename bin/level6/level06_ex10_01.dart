/**
 * To select heros in a Stream.
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
}

Stream<Character> watchCharacters(List<Character> characters) async* {
  int index = 0;
  while (index < characters.length) {
    yield characters[index++];
  }
}

Future main() async {
  var characters = 
    [new Character("The Dart"), new Character("Prof. Polymer"), 
     new Character("Captain Dart"), new Character("Bullseye")];
  await for (var character in watchCharacters(characters)) {
    // ________ { <- if (character.hero)
    if (character.hero) {
      print('Just seen ${character.name}.');
    }
  }
  print('No more heros.');
}