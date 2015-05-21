/**
 * To react at the end of a Stream.
 */

import 'dart:async';

class Character {
  String name;
  bool brave = false;
  
  Character(this.name);
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
    print('Just seen ${character.name}.');
  }
  // ________; <- print('No more characters.')
  print('No more characters.');
}