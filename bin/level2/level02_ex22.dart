
main() {
  // var phraseFunc = ________; <- (name, {String catchphrase:"Hello"}) => '$name says "$catchphrase"'
  var phraseFunc = (name, {String catchphrase:"Hello"}) => '$name says "$catchphrase"';

  var message = phraseFunc("The Dart");
  print(message);
}
