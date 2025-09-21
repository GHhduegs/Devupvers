enum TrafficLight { red, yellow, green }

class TrafficSignal {
  TrafficLight current = TrafficLight.red;

  void next() {
    switch (current) {
      case TrafficLight.red:
        current = TrafficLight.green;
        break;
      case TrafficLight.green:
        current = TrafficLight.yellow;
        break;
      case TrafficLight.yellow:
        current = TrafficLight.red;
        break;
    }
  }

  void showStatus() {
    switch (current) {
      case TrafficLight.red:
        print("STOP! Light is RED");
        break;
      case TrafficLight.yellow:
        print("READY! Light is YELLOW");
        break;
      case TrafficLight.green:
        print("GO! Light is GREEN");
        break;
    }
  }
}

void main() {
  var signal = TrafficSignal();


  for (int i = 0; i < 6; i++) {
    signal.showStatus();
    signal.next();
  }
}
