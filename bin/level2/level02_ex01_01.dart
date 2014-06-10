repeatCatchphrase(name, catchphrase, repeatCount) { // declaring the repeatCatchphrase function
  for (var i = 0; i < repeatCount; i++) {
    print('$name says "$catchphrase"');
  }
}

main() {
  repeatCatchphrase(true, 555, 1); // calling repeatCatchphrase
}
