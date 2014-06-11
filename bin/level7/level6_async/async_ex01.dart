// former Broadcast Streams: level04_ex10

import 'dart:async';

class Char {
  String name;
  bool brave = false;
  
  Char(this.name) {
    if (name.contains("Dart")) {
      brave = true;
    } 
  }
  
  bool get hero => brave;
  bool get sidekick => !name.contains("Dart");
}

Stream watchChars() {
  var chars = [new Char("The Dart"), new Char("Prof. Polymer"), 
               new Char("Captain Dart"), new Char("Bullseye")];
  // Create a stream controller.
  var controller = new StreamController();  
  // Starting after 1 second, while not at the end of the list, 
  // add the next character into the stream.
  int index = 0; 
  new Timer.periodic(new Duration(seconds:1), (Timer t) {
    if (index < chars.length) {
      controller.add(chars[index++]);
    } else {
      // no more chars left
      t.cancel(); 
      controller.close();
     }
  });
  // Return the stream from the controller. 
  // This will happen before the timer's first one-second tick.
  return controller.stream;
}

main() {
  var onChar = (char) => print('Just seen: ${char.name}');
  var onNoMoreHeros = () => print('No more heros');
  var onNoMoreSidekicks = () => print('No more sidekicks');
  var stream = watchChars();
  // var broadcastStream = stream.________; <- asBroadcastStream()
  var broadcastStream = stream.asBroadcastStream();
  broadcastStream.where((char) => char.hero).listen(onChar, onDone: onNoMoreHeros);
}