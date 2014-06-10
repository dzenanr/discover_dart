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
    var completer = new Completer();
    if (brave) {
      // completer.________('$name is not moody.'); <- completeError
      completer.completeError('$name is not moody.');
    } else {
      var interval = new Duration(milliseconds:1);
      var moodChanges = [];
      moodChange = new Timer.periodic(interval, (t) {      
        brave = !brave;
        moodChanges.add(brave);
        if (--changeCount == 0) {
          t.cancel();
          completer.complete(moodChanges);
        }    
      }); 
    }
    return completer.future;
  }
}

main() {
  print('begin');
  var char1 = new Char('Nasty Dog');
  print('Is ${char1.name} brave? ${char1.brave}');
  char1.hooHah().then((mc) => print('${char1.name} mood changes: $mc')); 
  var char2 = new Char('Dartisan');
  print('Is ${char2.name} brave? ${char2.brave}');
  char2.hooHah().then((mc) => print('${char2.name} mood changes: $mc'))
                .catchError((e) => print('Ouuups, $e'));
  print('end');
}