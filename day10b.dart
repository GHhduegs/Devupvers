class Car {
  String _brand = "Unknown";


  void setBrand(String brand) {
    _brand = brand;
  }


  void showBrand() {
    print("Car brand: $_brand");
  }
}

void main() {
  var c = Car();
  c.setBrand("Tesla");   
  c.showBrand();         
}