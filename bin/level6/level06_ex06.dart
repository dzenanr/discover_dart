/**
 * To catch a complete error.
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
    var completer = new Completer();
    if (brave) {
      // completer.________('$name is not moody.'); <- completeError
      completer.completeError('$name is not moody.');
    } else {
      var moodChanges = [];
      var changeCount = new Random().nextInt(9);
      var interval = new Duration(milliseconds:1);
      new Timer.periodic(interval, (t) {      
        brave = !brave;
        moodChanges.add(brave);
        if (--changeCount <= 0) {
          t.cancel();
          completer.complete(moodChanges);
        }    
      }); 
    }
    return completer.future;
  }
}

main() {
  print('begin main');
  var character1 = new Character('Nasty Dog');
  print('Is ${character1.name} brave? ${character1.brave}');
  character1.changeMood().then((mc) => print('${character1.name} mood changes: $mc')); 
  var character2 = new Character('Dartisan');
  print('Is ${character2.name} brave? ${character2.brave}');
  character2.changeMood()
    .then((mc) => print('${character2.name} mood changes: $mc'))
    .catchError((e) => print('Uuups, $e'));
  print('end main');
}