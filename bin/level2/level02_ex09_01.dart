
const bool DEBUG = true; // top level DEBUG constant

void log(String message) {
  if (DEBUG) {
    print("LOG: $message");
  } 
}

String spotHero(String hero) => "Look, there goes $hero";

void main() {
  var heroName = 'The Dart';
  log("We have a hero: $heroName"); // doesn't get output when DEBUG = false

  var message = spotHero(heroName);
  print(message);
}
