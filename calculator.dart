import 'dart:io';


main(){
  stdout.write('What is your name: ');
  String?name = stdin.readLineSync();
  print('Hello $name,Welcome to our simple calculator platform');
  print('-----------------------------------------------------');

  stdout.write('Do you want to continue: ');
  String?statement = stdin.readLineSync();
  if (statement == 'yes'){
    print("Thank you for choosing us!!");
    stdout.write('\nFirst Number: ');
    double num1 = double.parse(stdin.readLineSync()!);
    stdout.write('Enter Opertaion Sign:(+,-,/,*): ');
    String?operation = stdin.readLineSync();
    stdout.write('Second Number: ');
    double num2 = double.parse(stdin.readLineSync()!);

    switch(operation){
      case '+':
        double result = num1 +num2;
        print('Result: $result');
        break;
      case '-':
        double result = num1 - num2;
        print('RESULT: $result');
        break;
      case '*':
        double result = num1 * num2;
        print('Result: $result');
        break;
      case '/':
        double result = num1 / num2;
        print('Result: $result');
        break;
      default:
        print("Wrong Option");
    }
  }
  else if(statement == 'no'){
    print("Thank you for trusing our service");
  }
  else{
    print("Invalid option");
    }
}
