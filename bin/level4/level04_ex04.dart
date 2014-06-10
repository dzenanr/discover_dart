class Hero {
  String name;
  List powers;
}

main() {
  var myHero = new Hero()
  
  // ________  <- ..name = 'The Dart'
  // ________; <- ..powers = ['Coding', 'Testing']
    ..name = 'The Dart'                   
    ..powers = ['Coding', 'Testing'];
  
  // read data from the fields
  print("My Hero is ${myHero.name}");
  print('${myHero.name} enjoys ${myHero.powers.join(' & ')}');
}
