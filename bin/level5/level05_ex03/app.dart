// app.dart
import 'superhero.dart';

// import 'tactical_gear.dart' ________; <- as gear
import 'tactical_gear.dart' as gear;

main() {
  var hero = new Hero('The Dart');
  
  // var belt = new ________Gear('utility belt'); <- gear.
  var belt = new gear.Gear('utility belt');
  
  powerUp(hero); // now it's obvious this comes from superhero
}
