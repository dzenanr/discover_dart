// ________; <- part of tactical_gear
part of tactical_gear;

Gear gearUp(String name) => new Gear(name);

powerUp(Gear gear) {
  print("rebuild with adamantium");
}

num calculateRangeFromThrow(num initialSpeed, num angleInDegrees) {
  num degToRad(num deg) => deg * (PI/180);

  var rads = degToRad(angleInDegrees);
  return ( (2 * (initialSpeed * initialSpeed)) * sin(rads) * cos(rads) ) / 9.8;
}