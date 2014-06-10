class Hero {
  String name = '';
  List powers = [];
  bool wearsCape = false;

  bool canFly() => powers.contains('flying');
}

main() {
  var myHero = new Hero();
  
  // ________; <- myHero.wearsCape = true
  myHero.wearsCape = true;
  print('My hero wears cape: ${myHero.wearsCape}');
}



