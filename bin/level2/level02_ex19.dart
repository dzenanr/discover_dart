
String getCatchphrase(String name, {String catchphrase:"Hello"}) {
  return '$name says "$catchphrase"';
}

main() {
  var phraseFunc = getCatchphrase;
  print(phraseFunc);
}
