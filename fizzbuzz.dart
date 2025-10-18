import 'dart:io';

void main(){
  print('*********************** FIZZBUZZ GAME/APP ******************');
  stdout.write('Enter number: ');
  int number = int.parse(stdin.readLineSync()!);

  for (var i = 1;i < number + 1;i++){
    if (i % 3 == 0 && i % 5 == 0){
      print('$i: FizzBuzz');
    }
    else if (i % 3 == 0){
      print('$i: Fizz');
    }else if (i % 5 == 0){
      print('$i: Buzz');
    }
    
    else{
      print(i);
    }
  }
}