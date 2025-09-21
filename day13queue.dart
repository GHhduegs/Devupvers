
class EmptyQueueException implements Exception {
  String cause;
  EmptyQueueException(this.cause);

  @override
  String toString() => "EmptyQueueException: $cause";
}

class Queue<T> {
  final List<T> _items = [];

  void enqueue(T item) => _items.add(item);

  T dequeue() {
    if (_items.isEmpty) {
      throw EmptyQueueException("Queue is empty, cannot dequeue.");
    }
    return _items.removeAt(0);
  }

  T front() {
    if (_items.isEmpty) {
      throw EmptyQueueException("Queue is empty, cannot access front.");
    }
    return _items.first;
  }

  bool get isEmpty => _items.isEmpty;

  @override
  String toString() => _items.toString();
}

void main() {
  var queue = Queue<String>();

  try {
    queue.enqueue("A");
    queue.enqueue("B");
    print("Queue: $queue");

    print("Dequeued: ${queue.dequeue()}");
    print("Front: ${queue.front()}");      

    print("Dequeued: ${queue.dequeue()}"); 
    print("Dequeued: ${queue.dequeue()}");
  } catch (e) {
    print("Caught error: $e");
  } finally {
    print("Queue operation finished.");
  }
}
