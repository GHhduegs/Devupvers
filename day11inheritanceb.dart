abstract class Vehicle {
  void start();
  void stop();
}

class Car extends Vehicle {
  @override
  void start() {
    print("Car engine started");
  }

  @override
  void stop() {
    print("Car stopped");
  }
}

class Bike extends Vehicle {
  @override
  void start() {
    print("Bike engine started");
  }

  @override
  void stop() {
    print("Bike stopped");
  }
}

void main() {
  Vehicle v1 = Car();
  v1.start();
  v1.stop();

  Vehicle v2 = Bike();
  v2.start();
  v2.stop();
}
