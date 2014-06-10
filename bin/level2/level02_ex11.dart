
const bool DEBUG = true;

void log(message) {
  if (DEBUG) {        // uses the top-level DEBUG constant
    print("LOG: $message");
  } 
}

String spotHero(hero) => "Look, there goes $hero";

main() {
  var heroName = "The Dart";
  log("Look, there goes $heroName");

  const bool DEBUG = false;  // shadows the top-level DEBUG constant
  if (!DEBUG) {
    print("Move along please... nothing to see here");
  }
}
