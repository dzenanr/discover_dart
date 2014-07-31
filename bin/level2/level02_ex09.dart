
final bool DEBUG = false; // top level DEBUG variable

void log(String message) {
  display(String message) {
    print("LOG: $message");
  }
  
  if (DEBUG) {
    display(message);
  }
}

String spotHero(String hero) => "Look, there goes $hero";

void main() {
  var heroName = 'The Dart';
  log("We have a hero: $heroName"); // doesn't get output when DEBUG = false

  var message = spotHero(heroName);
  print(message);
}
