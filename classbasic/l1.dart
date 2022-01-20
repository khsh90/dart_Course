// class BankAccount {
//   double
//       balance; //this called property //the balance could be changed so it's mutable
//   final String
//       accountHolder; // the account holder shall not be changed so it's immutable and shall be final once get the value no one could change it

//   // BankAccount(double balance) {
//   //   this.balance = balance;
//   // } //this is the first way of declaring the constructor

//   // the seconed way is called list constructor like below

//   // BankAccount({required accountHolder, double balance = 0})
//   //     : accountHolder = accountHolder,
//   //       balance = balance;

//   // the third way and most offten used by using this as below :
//   BankAccount({required this.accountHolder, this.balance = 0});

//   double deposite(double amount) {
//     balance += amount;
//     return balance;
//   }

//   bool withdrow(double amount) {
//     if (balance >= amount) {
//       balance -= amount;
//       return true;
//     }
//     return false;
//   }
// }

// void main() {
//   final bankAccout1 = BankAccount(accountHolder: 'accountHolder', balance: 20);

//   // bankAccout1.deposite(20);
//   // bankAccout1.deposite(100);
//   // //print(bankAccout1.balance);

//   // final sucess1 = bankAccout1.withdrow(20);
//   // final deposite1 = 'Sucess:$sucess1, the balance is:${bankAccout1.balance}';
//   // final sucess2 = bankAccout1.withdrow(500);

//   // final deposite2 = 'sucess:$sucess2,the balance is: ${bankAccout1.balance}';
//   // print(deposite1);
//   // print(deposite2);

// // <<<<<<< HEAD
//   // print(bankAccout1.balance);
// // =======
// //   print(bankAccout1.balance);
// //   print(bankAccout1.accountHolder);
// // >>>>>>> 369d51249d917d9b692cbdb3f80b274fa585de42
// }
