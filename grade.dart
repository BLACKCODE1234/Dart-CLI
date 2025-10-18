import 'dart:io';
main(){
  stdout.write('NAME: ');
  String?name = stdin.readLineSync();

  stdout.write('Enter Student ID: ');
  String?ID = stdin.readLineSync();

  stdout.write('Enter English Score: ');
  double english = double.parse(stdin.readLineSync()!);

  stdout.write('Enter Science Score: ');
  double science = double.parse(stdin.readLineSync()!);

  stdout.write('Enter Maths Score: ');
  double math = double.parse(stdin.readLineSync()!);

  stdout.write('Enter Social Studies Score: ');
  double social = double.parse(stdin.readLineSync()!);

  stdout.write('Enter ICT Score: ');
  double ICT = double.parse(stdin.readLineSync()!);

  stdout.write('Enter your ARTS: ');
  double ARTS = double.parse(stdin.readLineSync()!);

  stdout.write('Enter RME Score: ');
  double RME = double.parse(stdin.readLineSync()!);

  double result = english + science +math + social + ICT + ARTS + RME;
  double Average = (result.round())/7;
  
  print(Average);

  
  if(Average >= 80){
    var grade = 'A';
    var remarks = 'Excellent';
    print('                 STUDENT RECORDS          ');
    print('------------------------------------------------------------------------------------\n');
    print('NAME              STUDENT ID            SCORE         GRADE        REMARKS\n');
    print('$name        $ID                   $Average       $grade       $remarks');
  }
  else if(Average >= 75){
   var grade = 'B+';
    var remarks = 'Very Good';
    print('                 STUDENT RECORDS          ');
    print('------------------------------------------------------------------------------------\n');
    print('NAME              STUDENT ID            SCORE         GRADE        REMARKS\n');
    print('$name         $ID                   $Average       $grade       $remarks'); 
  }
  else if(Average >=70 ){
    var grade = 'B';
    var remarks = 'Good';
    print('                 STUDENT RECORDS          ');
    print('------------------------------------------------------------------------------------\n');
    print('NAME              STUDENT ID            SCORE         GRADE        REMARKS\n');
    print('$name         $ID                   $Average       $grade       $remarks');
  }
  else if (Average >= 65){
    var grade = 'C+';
    var remarks = 'Credit';
    print('                 STUDENT RECORDS          ');
    print('------------------------------------------------------------------------------------\n');
    print('NAME              STUDENT ID            SCORE         GRADE        REMARKS\n');
    print('$name       $ID            $Average       $grade       $remarks');
  }
  else if (Average >= 60 ){
    var grade = 'C';
    var remarks = 'Average';
    print('                 STUDENT RECORDS          ');
    print('------------------------------------------------------------------------------------\n');
    print('NAME              STUDENT ID            SCORE         GRADE        REMARKS\n');
    print('$name         $ID           $Average       $grade       $remarks');
  }
  else if (Average >= 55){
    var grade = 'D+';
    var remarks = 'Pass';
    print('                 STUDENT RECORDS          ');
    print('------------------------------------------------------------------------------------\n');
    print('NAME              STUDENT ID            SCORE         GRADE        REMARKS\n');
    print('$name        $ID            $Average       $grade       $remarks');
  }
  else if (Average >= 50){
    var grade = 'D';
    var remarks = 'Survived';
    print('                 STUDENT RECORDS          ');
    print('------------------------------------------------------------------------------------\n');
    print('NAME              STUDENT ID            SCORE         GRADE        REMARKS\n');
    print('$name       $ID             $Average       $grade       $remarks');
  }
  else if (Average > 0 && Average < 50){
    var grade = 'F';
    var remarks = 'Fail';
    print('                 STUDENT RECORDS          ');
    print('------------------------------------------------------------------------------------\n');
    print('NAME              STUDENT ID            SCORE         GRADE        REMARKS\n');
    print('$name       $ID              $Average       $grade       $remarks');
  }
  else{
    print("NO RECORDS AT THIS POINT");
  }
}
