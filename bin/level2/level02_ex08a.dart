

void log(String message) {
  display(String message) {
    print("LOG: $message");
  }
  
  display(message);
}

void main() {
  var heroName = 'The Dart';
  log("We have a hero: $heroName"); 
}
