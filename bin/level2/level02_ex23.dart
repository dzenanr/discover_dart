
String heroCalculator(num x, num y, String calcFunction(num n, num m)) {
  if (x == 0 && y == 0) {
    return "That's not a heroic calculation";
  } else {
    return calcFunction(x,y);  
  }
}

main() {
  var theDartMultiplies = (num m, num n) => "The Dart multiplies: $m x $n = ${m * n}";
  var profPolymerAdds = (num m, num n) {
    return "Prof. Polymer adds: $m + $n = ${m + n}"; 
  }; 
  
  var answer1 = heroCalculator(50, 3, theDartMultiplies);
  print(answer1);
  
  var answer2 = heroCalculator(3, 50, profPolymerAdds);
  print(answer2);
  
  // var yourFunction = ________; <- (num m, num n) => "I divide: $m / $n = ${m / n}"
  var yourFunction = (num m, num n) => "You divide: $m / $n = ${m / n}";                      ;   
  var yourAnswer = heroCalculator(10, 20, yourFunction);
  print(yourAnswer);
}
