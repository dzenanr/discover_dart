// former Broadcast Streams: level04_ex10
// current: Level07_6_ex01
/**
 * To listen to a broadcast stream only once.
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

Stream<Character> watchCharacters() {
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

main() async {
  //var onCharacter = (c) => print('Just seen: ${c.name}');
  //var onNoMoreHeros = () => print('No more heros');
  //var onNoMoreSidekicks = () => print('No more sidekicks');
  var stream = watchCharacters();
  // var broadcastStream = stream.________; <- asBroadcastStream()
  var broadcastStream = stream.asBroadcastStream();
  //broadcastStream.where((c) => c.hero).listen(onCharacter, onDone: onNoMoreHeros);
  await for (var character in broadcastStream) {
    if (character.hero) {
      print('Just seen ${character.name}.');
    }
  }
  print('No more heros.');
}