/**
 * To show the Timer.periodic constructor.
 */

import 'dart:async';

class Countdown {
  int count, initialCount;
  
  Countdown(this.count) {
    if (count < 0) {
      count = count.abs();
    }
    initialCount = count;
  }
  
  void start() {
    var interval = new Duration(seconds: 1);
    // new Timer.________(interval, countdown); <- periodic
    new Timer.periodic(interval, countdown); 
    print('countdown started with $count seconds to go');
  }
  
  void countdown(Timer t) { // callback 
    print('${--count}');
    if (count == 0) {
      // t.________; <- cancel()
      t.cancel();
      print('after $initialCount seconds, fly');
    }
  }
}

void main() {
  print('begin main');
  new Countdown(3).start();
  print('end main');
}