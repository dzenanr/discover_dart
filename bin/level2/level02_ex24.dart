
String heroCalculator(num x, num y, calcFunction(num n, num m)) {
  if (x == 0 && y == 0) {
    return "That's not a heroic calculation";
  } else {
    return calcFunction(x, y);  
  }
}

main() {
  var answer1 = heroCalculator(50, 3, (num m, num n) => "The Dart multiplies: $m x $n = ${m * n}");
  print(answer1);
  
  var answer2 = heroCalculator(3, 50, (num m, num n) {
    return "Prof. Polymer adds: $m + $n = ${m + n}"; 
  });
  print(answer2);
 
  // var yourAnswer = heroCalculator(10, 20, ________); <- (num m, num n) => "You divide: $m / $n = ${m / n}"   
  var yourAnswer = heroCalculator(10, 20, (num m, num n) => "You divide: $m / $n = ${m / n}");
  print(yourAnswer);
}