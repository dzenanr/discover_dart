/**
 * To show a wrong way of chaining thens.
 */

import 'dart:async';

class Character {
  String name;
  bool brave = false;
  
  Character(this.name);
  
  Future<Character> encourage() {
    return new Future.delayed(new Duration(seconds: 1), () {
      brave = true;
      return this; 
    });
  }
  
  Future<Character> discourage() {
    if (name.contains('Dart')) {
      return new Future.error('$name cannot be discouraged.');
    } else {
      return new Future.delayed(new Duration(seconds: 1), () {
        brave = false;
        return this; 
      });
    }
  }
}

void main() {
  print('begin main');
  var reporter = new Character('Mild-mannered reporter');
  reporter.encourage().then(
    (c) => c.discourage().then((c) => print('${reporter.name} is discouraged.')));
  print('end main');
}