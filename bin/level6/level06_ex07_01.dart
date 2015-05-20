/**
 * To show the right way of chaining with async await.
 */

import 'dart:async';

class Character {
  String name;
  bool brave = false;
  
  Character(this.name);
  
  Future encourage() {
    return new Future.delayed(new Duration(seconds: 1), () {
      brave = true;
      return this; 
    });
  }
  
  Future<Character> discourage() {
    if (name.contains('Dart')) {
      return new Future.error('${name} cannot be discouraged');
    } else {
      return new Future.delayed(new Duration(seconds: 1), () {
        brave = false;
        return this; 
      });
    }
  }
}

main() async {
  print('begin main');
  var reporter = new Character('Mild-mannered reporter');
  /*
  reporter.encourage()
    .then((c) => c.discourage())
    .then((c) => print('reporter is discouraged'));
   */
  var c1 = await reporter.encourage();
  print('${reporter.name} is encouraged: ${c1.brave}');
  var c2 = await reporter.discourage();
  print('${reporter.name} is encouraged: ${c2.brave}');  
  print('end main');
}