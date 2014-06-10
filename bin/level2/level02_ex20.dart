
String getCatchphrase(String name, {String catchphrase:"Hello"}) {
  return '$name says "$catchphrase"';
}


main() {
  var phraseFunc = getCatchphrase;
  // var message = ________; <- phraseFunc("The Dart")
  var message = phraseFunc("The Dart");
  print(message);
}
