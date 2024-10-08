void main() {
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
    // print(i);
  }

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }

  // for in loop cleaner code
  // for (final candidate in candidates) {
  //   candidate.interview();
  // }
  // for (final Candidate(:name, :yearsExperience) in candidates){
  //   print('$name has $yearsExperience of experience');
  // }

  var collection = [1, 2, 3];
  collection.forEach(print);

  // while and do while
  // while (!isDone()) {
  //   doSomething();
  // }
  // do {
  //   printLine();
  // } while (!atEndOfPage());

  // break and continue
  // use break for stop looping
  // while (true) {
  //   if (shutDownRequested()) break;
  //   processIncomingRequests();
  // }
  // use continue to skip to the next loop iteration:
  // for (int i = 0; i < candidates.length; i++) {
  //   var candidate = candidates[i];
  //   if (candidate.yearsExperience < 5) {
  //     continue;
  //   }
  //   candidate.interview();
  // }

  // how to write previus example
  // candidates.where((c) => c.yearsExperience >= 5).forEach((c) => c.interview());
}
