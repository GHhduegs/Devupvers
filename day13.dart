void main() {
  try {
    int result = 10 ~/ 0; // Integer division by zero
    print("Result: $result");
  } on IntegerDivisionByZeroException {
    print("Cannot divide by zero!");
  } catch (e, s) {
    print("Exception caught: $e");
    print("Stack trace: $s");
  } finally {
    print("This block always executes.");
  }
}
