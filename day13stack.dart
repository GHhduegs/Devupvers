
class EmptyStackException implements Exception {
  String cause;
  EmptyStackException(this.cause);

  @override
  String toString() => "EmptyStackException: $cause";
}

class Stack<T> {
  final List<T> _items = [];

  void push(T item) => _items.add(item);

  T pop() {
    if (_items.isEmpty) {
      throw EmptyStackException("Stack is empty, cannot pop.");
    }
    return _items.removeLast();
  }

  T peek() {
    if (_items.isEmpty) {
      throw EmptyStackException("Stack is empty, cannot peek.");
    }
    return _items.last;
  }

  bool get isEmpty => _items.isEmpty;

  @override
  String toString() => _items.toString();
}

void main() {
  var stack = Stack<int>();

  try {
    stack.push(10);
    stack.push(20);
    print("Stack: $stack");  

    print("Popped: ${stack.pop()}");
    print("Top: ${stack.peek()}");   

    print("Popped: ${stack.pop()}"); 
    print("Popped: ${stack.pop()}");
  } catch (e) {
    print("Caught error: $e");
  } finally {
    print("Stack operation finished.");
  }
}
