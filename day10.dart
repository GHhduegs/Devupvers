
class Animal {
  void sound() {
    print("Animals make sounds");
  }
}

class Dog extends Animal {
  void sound() {
    print("Dog barks");
  }
}

void main() {
  var a = Animal();
  var d = Dog();

  a.sound(); 
  d.sound(); 
}
