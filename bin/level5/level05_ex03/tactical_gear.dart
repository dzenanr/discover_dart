// tactical_gear.dart

// ________; <- library tactical_gear
library tactical_gear;

class Gear {
  String name;
  
  Gear(this.name);
  
  String toString() => "${name}";
}

Gear gearUp(String name) => new Gear(name);

powerUp(Gear gear) {
  print("rebuild with adamantium");
}
