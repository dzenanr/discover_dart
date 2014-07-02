class SuperPower {
  static const String FLIGHT = 'flight';
  static const String INVISIBILITY = 'invisibility';
  
  // ________ values => [FLIGHT, INVISIBILITY]; <- static List get
  static List get values => [FLIGHT, INVISIBILITY];
}

main() {
  print(SuperPower.values);
}

