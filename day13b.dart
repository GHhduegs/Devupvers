class SafeList<T> {
  List<T> _items = [];

  void addItem(T item) {
    _items.add(item);
  }

  T getItem(int index) {
    try {
      return _items[index];
    } on RangeError {
      throw Exception("Invalid index: $index");
    }
  }
}

void main() {
  var numbers = SafeList<int>();
  numbers.addItem(10);
  numbers.addItem(20);

  try {
    print(numbers.getItem(1));  // Works fine
    print(numbers.getItem(5));  // Throws exception
  } catch (e) {
    print("Caught an exception: $e");
  } finally {
    print("Program finished.");
  }
}
