class Printer {
  void printData() {
    print("Printing...");
  }
}

class Scanner {
  void scanData() {
    print("Scanning...");
  }
}

class AllInOneMachine implements Printer, Scanner {
  @override
  void printData() {
    print("All-in-One printing...");
  }

  @override
  void scanData() {
    print("All-in-One scanning...");
  }
}

void main() {
  AllInOneMachine machine = AllInOneMachine();
  machine.printData();
  machine.scanData();
}
