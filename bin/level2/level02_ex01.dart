repeatCatchphrase(name, catchphrase, repeatCount) { // declaring the repeatCatchphrase function
  for (var i = 0; i < repeatCount; i++) {
    print('$name says "$catchphrase"');
  }
}

main() {
  var phrase = "Code like a hero with Dart";
  repeatCatchphrase("The Dart", phrase, 3); // calling repeatCatchphrase
}
