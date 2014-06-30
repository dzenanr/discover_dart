main() {
  var powers = ['Coding', 'Testing', 'Flight', 'Speed'];
  
  // var powerText = powers.where(________) <- (element) => element.endsWith('ing')
  //                       .join(________); <- ', '
  var powerText = powers.where((element) => element.endsWith('ing')) 
                        .join(', ');
  print('Heroic development includes: $powerText');
}

