
String spotHero(hero) => "Look, there goes $hero";

// String shoutMessage(message) ________;  <- => message.toUpperCase()
String shoutMessage(message) => message.toUpperCase();

main() {
  var message = spotHero("The Dart");
  var shoutOut = shoutMessage(message);

  print(message);
  print(shoutOut);
}
