class Hero {
  String name;
  List powers;
}

main() {
  var myHero = new Hero();
  myHero.name = "The Dart";                      // set the name field
  myHero.powers = ['Speed', 'Agility'];          // write a list of powers
  print('${myHero.name} has ${myHero.powers}');  // read data from the property
}
