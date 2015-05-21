// former Broadcast Streams: level04_ex11
// current: Level07_6_ex02

/**
 * To use a broadcast stream more than once.
 * Can we do it with async* and await for?
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
  bool get sidekick => !name.contains("Dart");
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
  var stream = watchCharacters(characters);
  var broadcastStream = stream.asBroadcastStream();
  await for (var character in broadcastStream) {
    if (character.hero) {
      print('Just seen ${character.name}.');
    }
  }
  print('No more heros.');
  await for (var character in broadcastStream) {
    if (character.sidekick) {
      print('Just seen ${character.name}.');
    }
  }
  print('No more sidekicks.');
}