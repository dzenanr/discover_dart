import 'dart:async';

class Countdown {
  int count, initialCount;
  Timer timer;
  
  Countdown(this.count) {
    if (count < 0) {
      count = count.abs();
    }
    initialCount = count;
  }
  
  start() {
    var interval = new Duration(seconds:1);
    timer = new Timer.periodic(interval, countdown); 
    print('countdown started with $count seconds to go');
  }
  
  countdown(Timer t) { // callback function
    print('${--count}');
    if (count == 0) {
      t.cancel();
      // ________; <- countout()
      countout();
    }
  }
  
  countout() {  
    print('after $initialCount seconds, fight');
  }
}

main() {
  print('begin');
  var countdown = new Countdown(9);
  countdown.start();
  print('end');
}