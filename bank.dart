
import 'dart:io';

void main(){
   greet();
  mainmenu();
}

greet(){
  print('**************** BANKAPP ************');
  print('---------------------------------------');
  stdout.write('How ahould i call you? ');
  String?name = stdin.readLineSync();
  print('Hello $name Welcome to DRUE, A digital banking platform.Banking brought to your doorstep');
}

mainmenu(){
  print('\n****************** MENU ******************');
  var option = ['SIGNUP','LOGIN','EXIT'];
  for (var i = 0; i < option.length; i++){
    print('${i+1}: ${option[i]}');
  }
  
  try{
    stdout.write('Choose your option: ');
  int num = int.parse(stdin.readLineSync()!);

  if (num == 1){
    create_account();
  }
  else if (num == 2){
    login();
  }
  else if (num == 3){
    print('');
  }
  else{
    print("Invalid option🤦‍♀️🤦‍♀️");
  }
  
  }
  on FormatException{
    print('Wrong Choice 🤦‍♂️');
  }
  }
  
create_account(){
  print('//////////////// SIGNUP //////////////////');
  print("Welcome to DRUE.Fill the fields to successfully create an account.");

  stdout.write('First Name: ');
  String?firstname = stdin.readLineSync();

  stdout.write('Last Name: ');
  String?lastname = stdin.readLineSync();

  stdout.write('Username: ');
  String?Username = stdin.readLineSync();

  stdout.write('PASSWORD: ');
  var password = stdin.readLineSync();

  stdout.write('PASSWORD: ');
  var repassword = stdin.readLineSync();

  if (password == repassword){
    print('Account Created Successfully👌✌️👍');
    print("NAME: $firstname $lastname");
    print("USERNAME:$Username");
  }
  else if (password != repassword){
    print('Passwords do not match');
  }
  else{
    print('Signup not successfull');
    login();
  }
}

login(){
  print('//////////////// LOGIN //////////////////');
  stdout.write('USERNAME: ');
  String?username = stdin.readLineSync();

  stdout.write('PASSWORD: ');
  var password = stdin.readLineSync();

  print("LOGIN SUCCESSFUL");
  print("$username You are logged in");
  menu();
}

deposit(){
  print('\n********* DEPOSIT YOUR MONEY **********');
  try{
    stdout.write('PIN: ');
  String?pin = stdin.readLineSync();
  if (pin == null ){
    print("Enter Pin");
  }
  else if(pin.length !=4 ){
    print("Wrong Pin");
  }
  else if(pin.length == 4){
  stdout.write('DEPOSIT: ');
  double deposit = double.parse(stdin.readLineSync()!);
  double balance = 100;
  try{
    if (deposit > 0){
      print('Deposit Successfull👌👌.\nDeposit: $deposit. Balance: $balance');
      menu();
    }
    else if (deposit < 0){
        print('Deposit Unsuccessfull.\nEnter a positive number.');
        print('Balance: $balance');
    }
  }
  on FormatException{
      print('Invalid Entry.Enter a positive number');
    }
  }
}
  on FormatException{
    print('Invalid Entry.Enter a positive number');

  }
}

withdraw(){
    print('\n********* WITHDRAW YOUR MONEY **********');
    try{
      double balance = 100;
      stdout.write('PIN: ');
      String? pin = stdin.readLineSync();
      if (pin == null || pin.length!=4){
          print('Wrong Pin');
      }

      else if (pin.length == 4){
        stdout.write('AMOUNT: ');
        double withdraw = double.parse(stdin.readLineSync()!);
        if (withdraw > balance){
          print("Withdraw Unsuccessfull.\nYou do not have enough funds.");
        }
        else if (withdraw < balance){
          double newbalance =  balance - withdraw;
          print('Withdraw Successfull👍👍✌️\nWithdraw: $withdraw.  BALANCE: $newbalance');
          menu();
        }
      }
    }
    on FormatException{
        print("Wrong Entry!!!");
    }
}
menu(){
  print('################ MENU #################');
  var menus = ['Deposit','Withdraw','Transfer Funds','Buy Stocks','Go Back'];
  for (var i = 0; i < menus.length; i ++){
    print('${i+1}: ${menus[i]}');}
  stdout.write('Choice: ');
  try{
    int choice = int.parse(stdin.readLineSync()!);
    if (choice == 1){
      deposit();
    }
    else if (choice == 2){
      withdraw();
    }
    else if (choice == 3){
      transfer();
    }
    else if (choice == 4){
      stocks();
    }
    else if (choice == 5){
      mainmenu();
    }
    else{
      print("Wrong Entry🤦‍♀️🤦‍♂️");
    }
  }
  on FormatException{
    print("Invalid Entry🤦‍♀️🤦‍♂️😂");
  }
}


transfer(){
  print("\n=============== TRANSFER MONEY WITH EASY ==============");
  try{
    double balance = 100;
    stdout.write("PIN: ");
    var pin = stdin.readLineSync();
    if (pin == null || pin.length != 4 ){
      print("Wrong Pin");
    }
    else if (pin.length == 4){
      stdout.write('Enter Receipient Account Number: ');
      var receipient = stdin.readLineSync();

      try{
        stdout.write('Amount: ');
        double amount = double.parse(stdin.readLineSync()!);
        if (amount > balance){
          print("Transfer Unsuccesfull.\nYou do not have enough Funds");
        }
        else if (amount <= balance){
          double newbalance = balance - amount;
          print("Transfer Successfull.\nReceipient Account: $receipient   Amount: $amount.   Balance: $newbalance.");
          menu();
        }
      }
      on FormatException{
        print("Wrong Entry.Enter a positive number");
      }
    }
  }
  on FormatException{
    print("Invalid Entry.\nEnter a positive integer");
  }
}

stocks(){
  print('*^###################### STOCKS ^###################');
  print('\nWelcome to our STOCKS section ');
  stdout.write('PIN: ');
  var pin = stdin.readLineSync();
  if (pin == null || pin.length != 4 ){
      print("Wrong Pin");
    }
    else if (pin.length == 4){
      try{
        stdout.write('Enter the Amount: ');
        double stock = double.parse(stdin.readLineSync()!);
        if (stock > 100){
          print("STOCK Successfully bought.");
          menu();
        }
        else if (stock < 100 ){
          print('You can not buy STOCK.\nSTOCK prices start at GHS 100.00');
        }
        else{
          print('Invalid Entry.');
        }
      }
      on FormatException{
        print("Wrong Entry");
      }  
  }
}