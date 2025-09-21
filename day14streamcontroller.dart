import 'dart:async';

void main() {
  final controller = StreamController<String>();

  controller.stream.listen((data) {
    print("Listener got: $data");
  });

  controller.add("Hello");
  controller.add("World");
  controller.close();
}
