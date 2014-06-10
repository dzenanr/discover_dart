class Costume {
  bool boots = false;
  bool mask = false;
  bool cape = false;
}

class Hero {
  String name = '';
  List powers = [];
  Costume costume = new Costume();

  bool canFly() => powers.contains('flying');

  bool get wearsCape => costume.cape;

  // ________ 
  // ________
  // ________
  void set wearsCape(bool wearsCape) {
    costume.cape = wearsCape;
  }
}

main() {
  var myHero = new Hero();
  myHero.wearsCape = true;
  print('My hero wears cape: ${myHero.wearsCape}');
}



