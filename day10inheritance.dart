
class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void displayInfo() {
    print("Brand: $brand, Year: $year");
  }
}


class Car extends Vehicle {
  int seats;

  Car(String brand, int year, this.seats) : super(brand, year);

  @override
  void displayInfo() {
    super.displayInfo(); 
    print("Seats: $seats");
  }
}

class Bike extends Vehicle {
  bool hasGear;

  Bike(String brand, int year, this.hasGear) : super(brand, year);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Has Gear: ${hasGear ? "Yes" : "No"}");
  }
}

void main() {
  var car = Car("Tesla", 2024, 5);
  var bike = Bike("Yamaha", 2022, true);

  print("Car Details:");
  car.displayInfo();

  print("\nBike Details:");
  bike.displayInfo();
}
