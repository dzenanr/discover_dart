import 'dart:async';

class Char {
  String name;
  bool brave = false;
  Timer moodChange;
  
  Char(this.name) {
    if (name.contains("Dart")) {
      brave = true;
    } 
  }
  
  Future hooHah({int changeCount:9}) {
    var interval = new Duration(milliseconds:1);
    var completer = new Completer();
    var moodChanges = [];
    moodChange = new Timer.periodic(interval, (t) {      
      brave = !brave;
      moodChanges.add(brave);
      if (--changeCount == 0) {      
        // t.________; <- cancel
        t.cancel();       
        completer.complete(moodChanges);
      }    
    }); 
    return completer.future;
  }
}

main() {
  print('begin');
  var char = new Char('Nasty Dog');
  print('Is ${char.name} brave? ${char.brave}');
  char.hooHah().then((mc) => print('${char.name} mood changes: $mc')); 
  print('end');
}