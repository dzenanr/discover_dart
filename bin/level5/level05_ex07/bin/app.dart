// app.dart
import 'superhero.dart';
import 'tactical_gear.dart' as gear;

main() {
  var hero = new Hero('The Dart');
  var belt = new gear.Gear('utility belt'); 
  powerUp(hero); 
  gear.powerUp(belt);
  print("range: ${gear.calculateRangeFromThrow(10)}");
}
