typedef MathOperation = int Function(int, int);

int add(int a, int b) => a + b;
int multiply(int a, int b) => a * b;

void performOperation(MathOperation operation, int x, int y) {
  print("Result: ${operation(x, y)}");
}

void main() {
  performOperation(add, 5, 3);      
  performOperation(multiply, 5, 3);
}
