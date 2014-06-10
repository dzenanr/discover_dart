// app.dart
import 'superhero.dart';
import 'tactical_gear.dart';

main() {
  var hero = new Hero('The Dart');
  var gear = new Gear('utility belt');
  powerUp(hero); // WARNING: defined in two libraries
}
