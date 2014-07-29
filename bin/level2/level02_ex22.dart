
main() {
  // var phraseFunc = ________; <- (String name, {String catchphrase:"Hello"}) => '$name says "$catchphrase"'
  var phraseFunc = (String name, {String catchphrase:"Hello"}) => '$name says "$catchphrase"';

  var message = phraseFunc("The Dart");
  print(message);
}
