class BankAccount {
  double _balance;
  BankAccount(this._balance);
  void deposit(double amount) {
    _balance += amount;
  }
  void withdraw(double amount) {
    if (amount < _balance) {
      throw NegativeBalanceException("Amount must be positive.");
    }
    if (amount > _balance) {
      throw NoEnoughMoneyException("No enough money.");
    }
    _balance -= amount;
  }
  void DisplayBalance() {
    print("Balance is $_balance");
  }
}

class NoEnoughMoneyException implements Exception {
  final String message1;
  NoEnoughMoneyException(this.message1);
}

class NegativeBalanceException implements Exception {
  final String message2;
  NegativeBalanceException(this.message2);

}

void main() {
  BankAccount bankAccount = BankAccount(3000);
  bankAccount.DisplayBalance();
  bankAccount.deposit(700);
  bankAccount.DisplayBalance();
  try {
    bankAccount.withdraw(8000);
    bankAccount.DisplayBalance();

  } on NoEnoughMoneyException catch (e) {
    print(e.message1);
    bankAccount.DisplayBalance();
  }
  try {
    bankAccount.withdraw(-8000);
    bankAccount.DisplayBalance();

  } on NegativeBalanceException catch (e) {
    print(e.message2);
    bankAccount.DisplayBalance();
  }
}
























