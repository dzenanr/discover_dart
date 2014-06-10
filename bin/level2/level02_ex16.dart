
repeatCatchphrase(String name, {String catchphrase:"Hello", int count:1}) {
 for (var i = 0; i < count; i++) {
   print('$name says "$catchphrase"');
  }
}

main() {
  repeatCatchphrase("The Dart", count:3); // specifying count by name.
}
