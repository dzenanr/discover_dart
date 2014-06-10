
String getCatchphrase(String name, {String catchphrase:"Hello"}) {
  return '$name says "$catchphrase"';
}


main() {
  print(getCatchphrase("The Dart"));
}
