var message = "The Dart multiplies";

String heroCalculator(num x, num y, calcFunction(n, m)) {
  if (x == 0 && y == 0) {
    return "That's not a heroic calculation";
  } else {
    return calcFunction(x, y);  
  }
}

Function buildCalcFunc() {
  return  (m, n) => "$message: $m x $n = ${m * n}"; // returns a function that has "captured" the top-level message variable
}

main() {    
  var theDartMultiplies = buildCalcFunc(); 
  var answer1 = heroCalculator(50, 3, theDartMultiplies); 
  print(answer1);
  
  message = "Prof. Polymer squares";  
  var profPolymerSquares = buildCalcFunc();
  var answer2 = heroCalculator(3, 3, profPolymerSquares); 
  print(answer2);
  
  message = "We do some calculations";
  var answer3 = heroCalculator(50, 3, theDartMultiplies); 
  print(answer3);
  
  var answer4 = heroCalculator(3, 3, profPolymerSquares); 
  print(answer4);
}

