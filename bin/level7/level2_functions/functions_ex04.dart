import 'dart:async';

coundown(int start) {
  new Timer.periodic(new Duration(seconds:1), 
      (Timer t) => start >= 0 ? print('${start--}') : t.cancel()); 
}

main() {
  coundown(2);
}