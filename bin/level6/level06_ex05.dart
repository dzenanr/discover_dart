/**
 * To show the use of Future error.
 */

import 'dart:async';

class Character {
  String name;
  bool brave = false;
  
  Character(this.name);
  
  Future<bool> encourage() {
    return new Future.delayed(new Duration(seconds: 1), () {
      return brave = true; 
    });
  }
  
  Future<bool> discourage() {
    if (name.contains('Dart')) {
      // return new Future.________('$name cannot be discouraged.'); <- error
      return new Future.error('$name cannot be discouraged.');
    } else {
      return new Future.delayed(new Duration(seconds: 1), () {
        return brave = false; 
      });
    }
  }
}

void main() {
  print('begin main');
  var programmer = new Character('Dart beginner'); 
  programmer.discourage()
    .then((b) => print('${programmer.name} is discouraged: brave is $b.'))
    //.________((e) => print('$e')); <- catchError
    .catchError((e) => print('$e'));
  print('end main');
}