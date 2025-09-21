// Abstract base class
abstract class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo(); // abstract method
}

// Custom interface (must be abstract in Dart)
abstract class Manageable {
  void add();
  void remove();
}

// Student class extending abstract class
class Student extends Person {
  int rollNo;
  String course;

  Student(String name, int age, this.rollNo, this.course) : super(name, age);

  @override
  void displayInfo() {
    print("RollNo: $rollNo, Name: $name, Age: $age, Course: $course");
  }
}

// Student Manager implementing Manageable interface
class StudentManager implements Manageable {
  List<Student> students = [];

  @override
  void add() {
    var s1 = Student("Ravi", 20, 101, "Computer Science");
    var s2 = Student("Anita", 21, 102, "Mathematics");
    students.addAll([s1, s2]);
    print("Students added successfully.");
  }

  @override
  void remove() {
    if (students.isNotEmpty) {
      students.removeAt(0);
      print("One student removed.");
    } else {
      print("No students to remove.");
    }
  }

  void showAllStudents() {
    if (students.isEmpty) {
      print("No students found.");
    } else {
      print("----- Student List -----");
      for (var s in students) {
        s.displayInfo();
      }
    }
  }
}

void main() {
  StudentManager manager = StudentManager();

  manager.add();
  manager.showAllStudents();

  manager.remove();
  manager.showAllStudents();
}

