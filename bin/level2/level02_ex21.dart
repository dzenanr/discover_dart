
main() {
  var phraseFunc = (String name, {String catchphrase:"Hello"}) {
    return '$name says "$catchphrase"';
  };

  var message = phraseFunc("The Dart");
  print(message);
}
