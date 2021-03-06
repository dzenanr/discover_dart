// former Broadcast Streams: level04_ex11
// current: Level07_6_ex02

/**
 * To listen to a broadcast stream more than once.
 * See: https://www.dartlang.org/articles/broadcast-streams/
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

void main() { 
  var characters = 
    [new Character("The Dart"), new Character("Prof. Polymer"), 
     new Character("Captain Dart"), new Character("Bullseye")]; 
  var stream = watchCharacters(characters);
  var broadcastStream = stream.asBroadcastStream();
  // listen for heros
  broadcastStream
    .where((character)  => character.hero)
    .listen((character) => print('Just seen hero: ${character.name}.'), 
             onDone: () => print('No more heros.'));
  // listen for sidekicks
  // ________ <- broadcastStream
  // ________ <-   .where((character)  => character.sidekick)
  // ________ <-   .listen((character) => print('Seen sidekick: ${character.name}'),  
  // ________ <-            onDone: () => print('No more sidekicks'));
  broadcastStream
    .where((character)  => character.sidekick)
    .listen((character) => print('Just seen sidekick: ${character.name}.'),  
             onDone: () => print('No more sidekicks.'));
}