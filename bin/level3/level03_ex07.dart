main() {
  var powers = ['Coding', 'Testing', 'Flight', 'Speed'];
  // var devPowers = ________; <- powers.where((element) => element.endsWith('ing'))
  var devPowers = powers.where((element) => element.endsWith('ing'));   
  print(devPowers);
}
