
// repeatCatchphrase(String name, String catchphrase, ________ repeatCount) {  <- int
repeatCatchphrase(String name, String catchphrase, int repeatCount) {
  for (var i = 0; i < repeatCount; i++) {
    print('$name says "$catchphrase"');
  }
}

main() {
  var phrase = "Code like a hero with Dart";
  // repeatCatchphrase("The Dart", phrase, 3); // calling repeatCatchphrase
  repeatCatchphrase(true, 555, "Not an int"); // invalid argument types
}
