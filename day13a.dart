class SafeList<T> {
  List<T> _items = [];

  void addItem(T item) => _items.add(item);

  T getItem(int index) {
    if (index < 0 || index >= _items.length) {
      throw RangeError("Index $index out of range");
    }
    return _items[index];
  }
}

void main() {
  var list = SafeList<String>();
  list.addItem("Apple");
  list.addItem("Banana");

  try {
    print(list.getItem(1));
    print(list.getItem(5)); 
  } on RangeError catch (e) {
    print("Range Error: $e");
  } catch (e) {
    print("Other Error: $e");
  } finally {
    print("Done accessing list.");
  }
}
