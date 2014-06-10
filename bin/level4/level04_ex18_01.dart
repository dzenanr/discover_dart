class SuperPower {
  static final SuperPower FLIGHT = new SuperPower._('FLIGHT');

  final String name;

  SuperPower._(this.name);

  String toString() => name;
}

main() {
  print(SuperPower.FLIGHT);  // accessing a static field from a class
}

