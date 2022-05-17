import 'dart:io';

main() {
  int choice;
  String? title;
  String? age;
  String? gender;
  var date, month, year;
  var clinic;
  var detail;

  print('    ----------------------------------');
  print('    |-- LIBRARY MANAGEMENT SYSTEM --|');
  print('    ----------------------------------');

  do {
    print(
        '\n  ----------- \n | MAIN MENU | \n  ----------- \n [1] Add Patient \n [2] Select Clinic \n [3] Shedule Appoitment \n [4] Histroy of Patient \n [5] Update Patient record \n [6] Exit\n ');
    String? choiceInStr = stdin.readLineSync();
    choice = int.parse(choiceInStr!);

    switch (choice) {
      case 1:
        stdout.write('Enter Name of Patient: ');
        title = stdin.readLineSync();
        stdout.write('Age: ');
        age = stdin.readLineSync();
        stdout.write('Gender: ');
        gender = stdin.readLineSync();
        print(
            '\nYour Account is Created Successfully!!! Please Select Clinic now.');
        break;

      case 2:
        print(
            '\nSelect the Clinic \n \n 1. General Clinic \n 2. Heart Clinic \n 3. Lung Clinic \n 4. Plastic Surgery \n');
        String? clinicinStr = stdin.readLineSync();
        clinic = int.parse(clinicinStr!);
        switch (clinic) {
          case 1:
            print(
                'You Selected General Clinic. Please Shedule appointment now...');
            break;
          case 2:
            print(
                'You Selected Heart Clinic. Please Shedule appointment now...');
            break;
          case 3:
            print(
                'You Selected Lung Clinic. Please Shedule appointment now...');
            break;
          case 4:
            print(
                'You Selected Plastic Surgery. Please Shedule appointment now...');
            break;
        }
        break;

      case 3:
        print('Enter Date.');
        date = stdin.readLineSync();
        print('Enter Month.');
        month = stdin.readLineSync();
        print('Enter Year.');
        year = stdin.readLineSync();

        print('Your Appointment date is $date/$month/$year');
        break;

      case 4:
        print(
            '\n Please Select. \n 1. Patient Detail \n 2. Patient Appointment detail');
        String? detailInStr = stdin.readLineSync();
        detail = int.parse(detailInStr!);
        switch (detail) {
          case 1:
            print('Patient Detail.');
            print('Name: $title \n Age: $age \n Gender: $gender');
            break;
          case 2:
            print('Patient Appointment detail.');
            print(
                'The Patient $title, Age $age, Gender $gender have sheduled appointment on $date/$month/$year ');
            switch (clinic) {
              case 1:
                print('General Clinic. ');
                break;
              case 2:
                print('Heart Clinic.');
                break;
              case 3:
                print('Lung Clinic.');
                break;
              case 4:
                print('Plastic Surgery.');
                break;
            }
            print('for $clinic');
            break;
        }

        break;

      case 5:
        stdout.write('Enter Name of Patient: ');
        title = stdin.readLineSync();
        stdout.write('Age: ');
        age = stdin.readLineSync();
        stdout.write('Gender: ');
        gender = stdin.readLineSync();
        print('\nYour Account info  is Updated Successfully!!! ');
        break;

      case 6:
        break;

      default:
        print('Please Choose number between 1-6');
        break;
    }
  } while (choice != 6);
}
