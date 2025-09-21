class Box<T> {
  T? item;

  void put(T item) {
    this.item = item;
  }

  T? get() {
    return item;
  }
}

void main() {
  var intBox = Box<int>();
  intBox.put(100);
  print(intBox.get());

  var stringBox = Box<String>();
  stringBox.put("Hello");
  print(stringBox.get());
}
