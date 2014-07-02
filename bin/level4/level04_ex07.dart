class Hero {
  String name = '';
  List powers = [];
  
  bool canFly() => powers.contains('flying');
}

main() {
  var myHero = new Hero()
    ..name = 'The Dart'
    ..powers = ['flying', 'strength'];
  
  // print('My hero can fly: ________'); <- ${myHero.canFly()}
  print('My hero can fly: ${myHero.canFly()}');
}

