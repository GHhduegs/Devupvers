mixin Logger {
  void log(String message) {
    print("[LOG]: $message");
  }
}

class Vehicle {
  void move() => print("Vehicle is moving...");
}

class Car extends Vehicle with Logger {
  void drive() {
    log("Car started");
    move();
  }
}

void main() {
  var car = Car();
  car.drive();
}
