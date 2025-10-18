import 'dart:io';

main(){
    stdout.write('What is your name: ');
    String?name = stdin.readLineSync();

    stdout.write('Are you a student: ');
    String?student = stdin.readLineSync();
    if (student == 'yes'  ){
        stdout.write('Enter student ID: ');
        String?id = stdin.readLineSync();
        print('NAME: $name \nSTUDENT ID: $id');
    }
    if(student == 'no'){
        stdout.write('STAFF? ');
        String?staff = stdin.readLineSync();
        if (staff == 'yes'){
        stdout.write('Enter Department: ');
        String?Department = stdin.readLineSync();
        print('NAME: $name \nDepartment: $Department');
        }
    } 
}
