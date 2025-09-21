abstract class Animal {
  void sound(); // abstract method

  void breathe() {
    print("All animals breathe...");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks: Woof Woof!");
  }
}

void main() {
  // Animal a = Animal(); ❌ Error: can't instantiate abstract class
  Dog d = Dog();
  d.sound();
  d.breathe();
}
