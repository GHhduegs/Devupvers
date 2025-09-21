import 'dart:async';

// Function to simulate a delay
Future<void> simulateDelay() async {
  print("Task started...");
  await Future.delayed(Duration(seconds: 3)); // wait 3 seconds
  print("Task completed after delay!");
}

// Function to create a counter stream
Stream<int> counterStream(int maxCount) async* {
  for (int i = 1; i <= maxCount; i++) {
    await Future.delayed(Duration(seconds: 1)); // wait before next number
    yield i; // emit the current number
  }
}

void main() async {
  print("Program begins");

  // Run the delay simulation
  await simulateDelay();

  // Run the stream counter
  print("Counter starts...");
  await for (int count in counterStream(5)) {
    print("Count: $count");
  }
  print("Counter finished!");

  print("Program ends");
}
