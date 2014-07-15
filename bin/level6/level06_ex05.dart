/**
 * To show the use of Future error.
 */

import 'dart:async';

class Character {
  String name;
  bool brave = false;
  
  Character(this.name);
  
  Future encourage() {
    return new Future.delayed(new Duration(seconds:1), () {
      return brave = true; 
    });
  }
  
  Future discourage() {
    if (name.contains('Dart')) {
      // return new Future.________('Dart cannot be discouraged'); <- error
      return new Future.error('Dart cannot be discouraged');
    } else {
      return new Future.delayed(new Duration(seconds:1), () {
        return brave = false; 
      });
    }
  }
}

main() {
  print('begin main');
  var programmer = new Character('Dart Beginner'); 
  programmer.discourage()
    .then((b) => print('programmer is discouraged'))
    //.________((e) => print('$e')); <- catchError
    .catchError((e) => print('$e'));
  print('end main');
}