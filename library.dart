import 'dart:io';

void main(){
  greet();
  menu();
}

greet(){
  stdout.write('NAME: ');
  String? name = stdin.readLineSync();
  print("HELLO $name. WELCOME TO THE COMMUNITY LIBRARY.\n");
}
menu(){
  print("***************** MENU ***************");
  var listed = ['BORROW BOOK','BUY BOOK','HISTORY','AVAILABLE BOOKS','EXIT'];
  for (var i=0; i <listed.length;i++){
  print('${i +1}: ${listed[i]}');
  }
  try{
    stdout.write("OPTION: ");
    int option = int.parse(stdin.readLineSync()!);
    if (option == 1){

    }
    else if (option == 2){

    }
    else if (option == 3){

    }
    else if (option == 4){

    }
    else if (option == 5){

    }
    else{
      print("Wrong Chioce");
    }
  }
  on FormatException{
    print("Invalid Option");
  }
}

buy_book(){
  print("\n************** Welcome To The OMANTEN Buy Section ******************");
  var books = [];
  bool found = false;
  stdout.write("Book Name: ");
  String?book = stdin.readLineSync();
  for (book1 in books){
    print('Book is Available');
  }
  found = true;
  menu();
}

search_book(){
  print("Search For Books Here!!!");
  var books = [];
  var found = false;
  stdout.write("Book Name: ");
  String? book = stdin.readLineSync();
  for (book in books){
    print("Book Found");
  }
  found = true;

}