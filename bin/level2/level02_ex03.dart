
// ________ repeatCatchphrase(String name, String catchphrase, int repeatCount) {  <- void
void repeatCatchphrase(String name, String catchphrase, int repeatCount) {
  for (var i = 0; i < repeatCount; i++) {
    print('$name says "$catchphrase"');
  }
}

main() {
  var phrase = "Code like a hero with Dart";
  repeatCatchphrase("The Dart", phrase, 3); // calling repeatCatchphrase
}
