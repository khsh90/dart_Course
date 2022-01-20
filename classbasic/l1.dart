class BankAccount {
  double balance = 0; //this called property

  BankAccount(double balance) {
    this.balance = balance;
  }

  double deposite(double amount) {
    balance += amount;
    return balance;
  }

  bool withdrow(double amount) {
    if (balance >= amount) {
      balance -= amount;
      return true;
    }
    return false;
  }
}

void main() {
  final bankAccout1 = BankAccount(100);

  // bankAccout1.deposite(20);
  // bankAccout1.deposite(100);
  // //print(bankAccout1.balance);

  // final sucess1 = bankAccout1.withdrow(20);
  // final deposite1 = 'Sucess:$sucess1, the balance is:${bankAccout1.balance}';
  // final sucess2 = bankAccout1.withdrow(500);

  // final deposite2 = 'sucess:$sucess2,the balance is: ${bankAccout1.balance}';
  // print(deposite1);
  // print(deposite2);

  // print(bankAccout1.balance);
}
