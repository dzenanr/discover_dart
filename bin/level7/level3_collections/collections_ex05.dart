// former level03_ex11

main() {
  var powers = ['Coding', 'Testing', 'Flight', 'Speed'];
  
  // var powerText = powers
  //     .where(________) <- (element) => element.endsWith('ing')
  //     .map(________)   <- (element) => 'Super$element'
  //     .join(________); <- ', '
  var powerText = powers
      .where((element) => element.endsWith('ing')) 
      .map((element) => 'Super$element')
      .join(', ');
  print('Heroic coding includes: $powerText');
}

