final bool log = true; // top level log variable

main() {
  var heroName = 'The Dart';
  if (log) {
    print("LOG: We have a hero: $heroName"); // doesn't get output when log is false
  } 
} 
