/**
 * To introduce the Completer class, 
 * in order to create a future and complete it later, without a known delay.
 * 
 * To use async await in the main function.
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
  
  Future<List> changeMood() {
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

main() async {
  print('begin main');
  var character = new Character('Nasty Dog');
  print('Is ${character.name} brave? ${character.brave}');
  //character.changeMood().then((mc) => print('${character.name} mood changes: $mc')); 
  // var mc = ________ character.changeMood(); <- await
  var mc = await character.changeMood();
  print('${character.name} mood changes: $mc'); 
  print('end main');
}