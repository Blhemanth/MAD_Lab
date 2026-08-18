import 'dart:io';

void main(){
  stdout.write("Enter your Name: ");
  String? name=stdin.readLineSync();
  stdout.write("Enter your age: ");
  int age=int.parse(stdin.readLineSync()!);
  stdout.write("Enter your Course: ");
  var course=stdin.readLineSync();
  stdout.write("Are you absent: ");
  bool absent=bool.parse(stdin.readLineSync()!);
  stdout.write("Enter your Contry: ");
  final contry=stdin.readLineSync();
  print("___________Student Details____________");
  print("Name: $name");
  print("Age: $age");
  print("Course: $course");
  print("absent: $absent");
  print("contry: $contry");
}