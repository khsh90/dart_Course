var global =
    1; //this called global could used any where inside main or insde function

void stars() {
  print('*' * global);
  global++; //use this type of global will make the chnage of fuction and will make it not pure
  //don't use the global inside fuction if no need to it
}

const byte =
    8; //when use it like this global is usefull as it's value will not be changed .

void calulateData() {}

void main() {
  // final person = descripe(name: 'khaled', age: 30);
  // stars();
  // stars();
  // stars();

  var kilobyat =
      1024 * byte; //using global value here is usfull as byte is const.
  var megaByte = 1024 * kilobyat;

  print(byte);
  print(kilobyat);
  print(megaByte);
  // print(person);

  // print(sum1(5, 6));
  // sum2(5, 6);

  // print(global);
}

// String descripe({required String name, required int age}) {
//   return 'My name is $name and my age is $age';

// String descripe([required  name,  int age]})

// this called named aregument=>{} make the argument optional you can type the name:any name without value and make the argument more readable like name :khaked age:30
//to use the name and age with no value we need to put ?   String ?name so the name default value will be null
// to prevent of make it null give it a defalult value like name='enter your name'
//to make the value required and make the arguemnt all are required put required like required String name
//you can make the argument optional by use [] , the diffrent among it and {} no need to wire the name like thus name : khaled ,just when [] type khaled
//
// -------------------------------------------
//use arrow with sigle line of code works with return and void
int sum1(int a, int b) => a + b;
void sum2(int a, int b) => print(a + b);
