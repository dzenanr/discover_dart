
void repeatCatchphrase(String name, [String catchphrase = "Hello", int repeatCount = 1]) {
  for (var i = 0; i < repeatCount; i++) {
    print('$name says "$catchphrase"');
  }
}

main() {
  repeatCatchphrase("The Dart", "Code like a hero", 3);     // provide all three args
  repeatCatchphrase("Prof. Polymer", "Shadow DOM is cool"); // provide only the first two args
  repeatCatchphrase("Captain Dart");                        // provide only the first arg
}
