class Person {
  String name;
  int? age;           
  late String country; 

  Person(this.name, [this.age]);

  
  Person.guest() {
    name = "Guest";
    age = null;  
  }

  void showInfo() {
    print("Name: $name, Age: ${age ?? "Not Provided"}, Country: $country");
  }
}

void main() {
  var p1 = Person("Ravi", 22);
  p1.country = "India";
  p1.showInfo();

  var p2 = Person.guest();
  p2.country = "USA";
  p2.showInfo();
}
