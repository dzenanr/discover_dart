/**
 * To show the use of Future error within try catch with async await.
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
  
  Future<bool> discourage() {
    if (name.contains('Dart')) {
      // return new Future.________('Dart cannot be discouraged'); <- error
      return new Future.error('${name} cannot be discouraged.');
    } else {
      return new Future.delayed(new Duration(seconds:1), () {
        return brave = false; 
      });
    }
  }
}

main() async {
  print('begin main');
  var programmer = new Character('Dart beginner'); 
  /*
  programmer.discourage()
    .then((b) => print('programmer is discouraged'))
    //.________((e) => print('$e')); <- catchError
    .catchError((e) => print('$e'));
   */
  try {
    var b = await programmer.discourage();
    print('${programmer.name} programmer is discouraged: $b');
  } catch(e) {
    print('$e');
  }
  print('end main');
}