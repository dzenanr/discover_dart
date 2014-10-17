// app.dart
import 'superhero.dart';
// ________; <- import 'tactical_gear.dart'
import 'tactical_gear.dart';

main() {
  var theDart = new Hero("The Dart");    // imported from superhero.dart
  //var belt = gearUp('utility belt');   // imported from tactical_gear.dart
  var belt = new Gear('utility belt');   // imported from tactical_gear.dart
  theDart.tacticalGear.add(belt);
  //print(theDart.tacticalGear);
}
