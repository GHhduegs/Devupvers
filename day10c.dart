class Student {
  String _name = ""; 
  String get name => _name;

  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    }
  }
}

void main() {
  var s = Student();
  s.name = "Ravi";
  print("Student name: ${s.name}");
}
