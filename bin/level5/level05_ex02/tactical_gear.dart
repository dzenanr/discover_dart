// tactical_gear.dart

// ________; <- library tactical_gear
library tactical_gear;

class Gear {
  String name;
  
  Gear(this.name);
  
  String toString() => "$name";
}

powerUp(Gear hero) {
  print("rebuild with adamantium");
}
