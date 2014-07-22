
void repeatCatchphrase(String name, String catchphrase, int repeatCount) {
  for (var i = 0; i < repeatCount; i++) {
    print('$name says "$catchphrase"');
  }
}

main() {
  repeatCatchphrase("Prof. Polymer", "ShadowDOM is cool"); // provide only the first two args
}
