class BankAccount {
  String _accountHolder;
  double _balance = 0;

 
  BankAccount(this._accountHolder, this._balance);

  
  String get accountHolder => _accountHolder;


  double get balance => _balance;

  
  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount");
    } else {
      print("Invalid deposit amount!");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Insufficient balance or invalid amount!");
    }
  }

  void display() {
    print("Account Holder: $_accountHolder, Balance: $_balance");
  }
}

void main() {
  var acc = BankAccount("Ravi", 5000);

  acc.display();
  acc.deposit = 2000;
  acc.withdraw(1500);
  acc.display();

  print("Balance (via getter): ${acc.balance}");
}
