
String heroCalculator(num x, num y, String calcFunction(n, m)) {
  if (x == 0 && y == 0) {
    return "That's not a heroic sum";
  } else {
    return calcFunction(x,y);  
  }
}

main() {
  var theDartMultiplies = (m, n) => "The Dart multiplies: $m x $n = ${m * n}";
  var profPolymerAdds = (m, n) {
    return "Prof. Polymer adds: $m + $n = ${m + n}"; 
  }; 
  
  var answer1 = heroCalculator(50, 3, theDartMultiplies);
  print(answer1);
  
  var answer2 = heroCalculator(3, 50, profPolymerAdds);
  print(answer2);
  
  // var yourFunction = ________; <- (m, n) => "I divide: $m / $n = ${m / n}"
  var yourFunction = (m, n) => "You divide: $m / $n = ${m / n}";                      ;   
  var yourAnswer = heroCalculator(10, 20, yourFunction);
  print(yourAnswer);
  
  var myFunction = (m, n) => "I divide: $m / $n = ${m / n}";
  var myAnswer = heroCalculator(0, 20, myFunction);
  myAnswer = heroCalculator(20, 0, myFunction);
  print(myAnswer);
}
