// former level03_ex09

main() {
  // function variables
  var mapper = (element) => element.length;
  var reducer = (currentMax, element) => element > currentMax ? element : currentMax;
  
  var characterList = ['The Dart', 'Prof. Polymer', 'Captain Dart', 'Bullseye'];
  
  // pass the function variables into map( ) and reduce( ) respectively.
  // var maxLength = characterList.map(________).reduce(________); <- mapper <- reducer
  var maxLength = characterList.map(mapper).reduce(reducer);
  print(maxLength);
}

