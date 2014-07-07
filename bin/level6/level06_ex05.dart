/**
 * To introduce the Completer class, 
 * in order to create a future and complete it later, without a known delay.
 */

import 'dart:async';
import 'dart:math';

class Character {
  String name;
  bool brave = false;
  
  Character(this.name) {
    if (name.contains("Dart")) {
      brave = true;
    } 
  }
  
  Future changeMood() {
    var moodChanges = [];
    var changeCount = new Random().nextInt(10);
    var interval = new Duration(seconds:1);
    var completer = new Completer();
    new Timer.periodic(interval, (t) {      
      brave = !brave;
      moodChanges.add(brave);
      if (--changeCount <= 0) {      
        t.cancel();
        // completer.________(moodChanges); <- complete
        completer.complete(moodChanges);
      }    
    }); 
    return completer.future;
  }
}

main() {
  print('begin main');
  var character = new Character('Nasty Dog');
  print('Is ${character.name} brave? ${character.brave}');
  character.changeMood().then((mc) => print('${character.name} mood changes: $mc')); 
  print('end main');
}