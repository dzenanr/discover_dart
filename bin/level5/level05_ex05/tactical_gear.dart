// tactical_gear.dart
library tactical_gear;

// import ________; <-'dart:math' show sin, cos;
import 'dart:math' show PI, sin, cos;

class Gear {
  String name;
  
  Gear(this.name);
  
  String toString() => "${name}";
}

powerUp(Gear gear) {
  print("rebuild with adamantium");
}

num calculateRangeFromThrow(num initialSpeed, num angleInDegrees) {
  num degToRad(num deg) => deg * (PI/180);

  var rads = degToRad(angleInDegrees);
  return ( (2 * (initialSpeed * initialSpeed)) * sin(rads) * cos(rads) ) / 9.8;
}
