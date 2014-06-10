class Hero {
  String name = '';
  List powers = [];
  
  bool canFly() => powers.contains('flying');
}

main() {
  var myHero = new Hero()
    ..name = 'The Dart'
    ..powers = ['flying', 'strength'];
  
  // print('My hero can fly: ________'); 
  print('My hero can fly: ${myHero.canFly()}');
}

