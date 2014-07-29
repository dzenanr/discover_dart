// former level02_ex25

String heroCalculator(num x, num y, calcFunction(n, m)) {
  if (x == 0 && y == 0) {
    return "That's not a heroic calculation";
  } else {
    return calcFunction(x, y);  
  }
}

Function buildCalcFunc(String message) {
  return  (m, n) => "$message: $m x $n = ${m * n}"; // returns a function that has "captured" the message variable
}

main() {
  var message = "The Dart multiplies";      
  var theDartMultiplies = buildCalcFunc(message); // retains a reference to 'The Dart multiplies'
  
  message = "Prof. Polymer squares";  
  var profPolymerSquares = buildCalcFunc(message); // retains a reference to 'Prof. Polymer squares'
  
  message = "We do some calculations";
  var answer1 = heroCalculator(50, 3, theDartMultiplies); // uses the retained reference to 'The Dart multiplies'
  print(answer1);
  
  var answer2 = heroCalculator(3, 3, profPolymerSquares); // uses the retained reference to 'Prof. Polymer squares'
  print(answer2);
}