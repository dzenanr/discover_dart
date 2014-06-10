class Hero {
  String name = '';
  List powers = [];
  
  // bool canFly() => ________; <- powers.contains('flying')
  bool canFly() => powers.contains('flying');
}

/*
main() {
  var myHero = new Hero()
    ..name = 'The Dart'                   
    ..powers = ['Coding', 'Testing'];
  
  // read data from the fields
  print("My Hero is ${myHero.name}");
  print('${myHero.name} enjoys ${myHero.powers.join(' & ')}');
}
*/
