class SuperPower {
  static final SuperPower FLIGHT = new SuperPower._('FLIGHT');
  static final SuperPower INVISIBILITY = new SuperPower._('INVISIBILITY');
  
  // ________ values => [FLIGHT, INVISIBILITY]; <- static List get
  static List get values => [FLIGHT, INVISIBILITY];
  
  final String name;

  SuperPower._(this.name);

  String toString() => name;
}

main() {
  print(SuperPower.values);
}