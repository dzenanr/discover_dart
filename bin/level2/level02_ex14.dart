
// String checkName(String name, ________) { <- [String heroText="Hero", String sidekickText="Sidekick"]
String checkName(String name, [String heroText="Hero", String sidekickText="Sidekick"]) {   
  if (name.contains("Dart")) {
    return heroText;
  } else {
    return sidekickText;   
  }
}

main() {
  var status = checkName("The Dart");
  print("The Dart is a $status");
}
