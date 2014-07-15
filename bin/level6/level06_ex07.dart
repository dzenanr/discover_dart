/**
 * To show the right way of chaining thens.
 */

import 'dart:async';

class Character {
  String name;
  bool brave = false;
  
  Character(this.name);
  
  Future encourage() {
    return new Future.delayed(new Duration(seconds:1), () {
      brave = true;
      return this; 
    });
  }
  
  Future discourage() {
    if (name.contains('Dart')) {
      return new Future.error('Dart cannot be discouraged');
    } else {
      return new Future.delayed(new Duration(seconds:1), () {
        brave = false;
        return this; 
      });
    }
  }
}

main() {
  print('begin main');
  var reporter = new Character('Mild-mannered Reporter');
  reporter.encourage()
    .then((c) => c.discourage())
    .then((c) => print('reporter is discouraged'));
  print('end main');
}