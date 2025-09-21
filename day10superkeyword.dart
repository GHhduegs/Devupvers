class Person {
  String name;
  Person(this.name);

  void display() {
    print("Person name: $name");
  }
}

class Student extends Person {
  String course;

  
  Student(String name, this.course) : super(name);

  @override
  void display() {
    super.display();
    print("Course: $course");
  }
}

void main() {
  var s = Student("Ravi", "Computer Science");
  s.display();
}
