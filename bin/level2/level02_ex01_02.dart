repeatCatchphrase(name, catchphrase, repeatCount) { // declaring the repeatCatchphrase function
  for (var i = 0; i < repeatCount; i++) {
    print('$name says "$catchphrase"');
  }
}

main() {
  var phrase = "Code like a hero with Dart";
  // repeatCatchphrase(true, 555, ________);  ← a non number value like 'Hello!'
  repeatCatchphrase(true, 555, 'Hello!'); // calling repeatCatchphrase
}
