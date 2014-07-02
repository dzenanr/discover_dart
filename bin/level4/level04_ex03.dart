class Hero {
  String name;
  List powers;
}

main() {
  var myHero = new Hero();
  
  // write data into the fields
  // ________; <- myHero.name = "Captain Dart";
  // ________; <- myHero.powers = ['Coding', 'Testing'];
  myHero.name = "Captain Dart";                    
  myHero.powers = ['Coding', 'Testing'];
  
  // read data from the fields
  print("My Hero is ${myHero.name}");
  print('${myHero.name} enjoys ${myHero.powers.join(' & ')}');
}
