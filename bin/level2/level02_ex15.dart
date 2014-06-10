
String checkName(String name, [String heroText="Hero", String sidekickText="Sidekick"]) {
  if (name.contains("Dart")) {
    return heroText;
  } else {
    return sidekickText;   
  }
}

main() {
  // var status = checkName("The Dart", ________); <- "Superhero"
  var status = checkName("The Dart", "Superhero"); 
  print("The Dart is a $status");  

  status = checkName("Prof. Polymer", "Superhero", "great sidekick");
  print("Prof. Polymer is a $status");
}
