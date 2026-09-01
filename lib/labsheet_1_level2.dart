import 'dart:io';
class Student {
  int rollNo;
  String name;
  String department;
  double marks;
  Student(this.rollNo, this.name, this.department, this.marks);
  String calculateGrade() {
    if (marks >= 90) {
      return "A+";
    } else if (marks >= 80) {
      return "A";
    } else if (marks >= 70) {
      return "B";
    } else if (marks >= 60) {
      return "C";
    } else if (marks >= 50) {
      return "D";
    } else {
      return "F";
    }
  }
  void displayDetails() {
    print("\n---------- Student Details ----------");
    print("Roll Number : $rollNo");
    print("Name        : $name");
    print("Department  : $department");
    print("Marks       : $marks");
    print("Grade       : ${calculateGrade()}");
    print("-------------------------------------");
  }
}
void main() {
  List<Student> students = [];
  stdout.write("Enter number of students: ");
  int numberOfStudents = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < numberOfStudents; i++) {
    print("\nEnter details for Student ${i + 1}");
    stdout.write("Enter Roll Number: ");
    int rollNo = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Name: ");
    String name = stdin.readLineSync()!;
    stdout.write("Enter Department: ");
    String department = stdin.readLineSync()!;
    stdout.write("Enter Marks: ");
    double marks = double.parse(stdin.readLineSync()!);
    Student student = Student(
      rollNo,
      name,
      department,
      marks,
    );
    students.add(student);
  }
  print("\n========== STUDENT MANAGEMENT SYSTEM ==========");
  for (Student student in students) {
    student.displayDetails();
  }
}