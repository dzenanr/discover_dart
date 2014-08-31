// tactical_gear.dart
library tactical_gear;

// import 'package:randomize/________' show circle; <- randomize.dart
import 'package:randomize/randomize.dart' show circle;

import 'dart:math' show PI, sin, cos;

part 'tactical_gear/gear.dart';

Gear gearUp(String name) => new Gear(name);

powerUp(Gear gear) {
  print("rebuild with adamantium");
}

num calculateRangeFromThrow(num initialSpeed) {
  num degToRad(num deg) => deg * (PI/180);

  var rads = degToRad(circle());
  return ( (2 * (initialSpeed * initialSpeed)) * sin(rads) * cos(rads) ) / 9.8;
}
