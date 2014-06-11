library countdown;

import 'dart:async';

class Counter {
  int count;
  Timer timer;
  
  Counter(this.count);
  
  start() {
    timer = new Timer(
      new Duration(seconds:count), 
      () => print('after $count seconds, fly')
    ); 
    print('counter started with $count seconds to go');
  }
}



