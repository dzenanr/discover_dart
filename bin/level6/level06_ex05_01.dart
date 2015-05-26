/**
 * To show the use of Future error within try catch with async await.
 */

import 'dart:async';

class Character {
  String name;
  bool brave = false;
  
  Character(this.name);
  
  Future<bool> encourage() async {
    return new Future.delayed(new Duration(seconds: 1), () {
      return brave = true; 
    });
  }
  
  Future<bool> discourage() async {
    if (name.contains('Dart')) {
      return new Future.error('$name cannot be discouraged.');
    } else {
      return new Future.delayed(new Duration(seconds: 1), () {
        return brave = false; 
      });
    }
  }
}

Future main() async {
  print('begin main');
  var programmer = new Character('Dart beginner'); 
  // ________ { <- try
  try {
    var b = await programmer.discourage();
    print('${programmer.name} is discouraged: brave is $b.');
  // } ________(e) { <- catch
  } catch(e) {
    print('$e');
  }
  print('end main');
}