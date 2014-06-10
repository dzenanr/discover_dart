class SuperPower {
  static final SuperPower FLIGHT = new SuperPower._('FLIGHT');
 
  // ________ final SuperPower INVISIBILITY = new SuperPower._('INVISIBILITY'); <- static
  static final SuperPower INVISIBILITY = new SuperPower._('INVISIBILITY');
  
  final String name;

  SuperPower._(this.name);

  String toString() => name;
}

main() {
  print(SuperPower.INVISIBILITY);
}