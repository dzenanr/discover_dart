/**
 * To show the right way of chaining with async await.
 */

import 'dart:async';

class Character {
  String name;
  bool brave = false;
  
  Character(this.name);
  
  Future<Character> encourage() async {
    return new Future.delayed(new Duration(seconds: 1), () {
      brave = true;
      return this; 
    });
  }
  
  Future<Character> discourage() async {
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

Future main() async {
  print('begin main');
  var reporter = new Character('Mild-mannered reporter');
  // var c1 = await ________; <- reporter.encourage()
  var c1 = await reporter.encourage();
  print('${reporter.name} is encouraged: brave is ${c1.brave}.');
  // var c2 = await ________; <- reporter.discourage()
  var c2 = await reporter.discourage();
  print('${reporter.name} is discouraged: brave is ${c2.brave}.');  
  print('end main');
}