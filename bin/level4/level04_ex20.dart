class SuperPower {
  static const String FLIGHT = 'FLIGHT';
  static const String INVISIBILITY = 'INVISIBILITY';
  
  static List get values => [FLIGHT, INVISIBILITY];
}

main() {
  print(SuperPower.values);
}

