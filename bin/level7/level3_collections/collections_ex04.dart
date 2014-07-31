
main() {
  var characterList = ['The Dart', 'Prof. Polymer', 'Captain Dart', 'Bullseye'];
  var maxLength = characterList
      .map((element) => element.length)
      .reduce((currentMax, element) => element > currentMax ? element : currentMax);
  print(maxLength);
}

