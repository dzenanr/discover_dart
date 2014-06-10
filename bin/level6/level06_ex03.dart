import 'dart:async';

class Char {
  String name;
  bool brave = false; 
  
  Char(this.name) {
    if (name.contains("Dart")) {
      brave = true;
    } 
  }
  
  Future hoo() {
    var completer = new Completer();
    new Timer(new Duration(seconds:1), () {
      brave = true; 
      // completer.complete(________); <- brave
      completer.complete(brave);
    });
    return completer.future;
  }
}

main() {
  print('begin');
  var char = new Char('Mild-mannered Reporter');
  print('brave: ${char.brave}');
  print(char.hoo());
  print('end');
}