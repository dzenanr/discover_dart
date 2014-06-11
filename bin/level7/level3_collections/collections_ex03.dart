// former level03_ex09

main() {
  // function variables
  var mapperFunc = (element) => element.length;
  var reducerFunc = (currentMax, element) => element > currentMax ? element : currentMax;
  
  var charList = ['The Dart', 'Prof. Polymer', 'Captain Dart', 'Bullseye'];
  
  // pass the function variables into map( ) and reduce( ) respectively.
  // var maxLength = charList.map(________).reduce(________); <- mapperFunc <- reducerFunc
  var maxLength = charList.map(mapperFunc).reduce(reducerFunc);
  print(maxLength);
}

