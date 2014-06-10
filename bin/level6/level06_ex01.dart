import 'dart:async';

class Counter {
  int count;
  Timer timer;
  
  Counter(this.count) {
    if (count < 0) {
      count = count.abs();
    }
  }
  
  start() {
    var duration = new Duration(seconds:count);
    timer = new Timer(duration, countout); 
    print('counter started with $count seconds to go');
  }
  
  countout() { // callback function
    print('after $count seconds, fly');
  }
}

main() {
  print('begin');
  var counter = new Counter(3);
  // counter.________; <- start()
  counter.start();
  print('end');
}