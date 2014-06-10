main() {
  // ________ isTheDartEpic = true;  ← final bool
  final bool isTheDartEpic = true;
  
  if (isTheDartEpic = false) {   // watch out - there's a bug here..
    print("I think you are wrong - The Dart is Epic!");
  }
} 
