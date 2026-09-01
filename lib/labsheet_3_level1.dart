import 'dart:io';
double calculateAnnualSalary(double monthlySalary) {
  return monthlySalary * 12; }
double calculateBonus(double monthlySalary, [double bonusPercentage = 10]) {
  return monthlySalary * bonusPercentage / 100; }
double calculateTotalSalary({required double annualSalary, double bonus = 0}) {
  return annualSalary + bonus; }
void main() {
  stdout.write("Enter Employee Name: ");
  String name = stdin.readLineSync()!;
  stdout.write("Enter Employee ID: ");
  int id = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Monthly Salary: ");
  double monthlySalary = double.parse(stdin.readLineSync()!);
  stdout.write("Enter Bonus Percentage: ");
  double bonusPercentage = double.parse(stdin.readLineSync()!);
  double annualSalary = calculateAnnualSalary(monthlySalary);
  double bonus = calculateBonus(monthlySalary, bonusPercentage);
  double totalSalary = calculateTotalSalary(annualSalary: annualSalary, bonus: bonus);
  print("\n========== Employee Salary Details ==========");
  print("Employee ID       : $id");
  print("Employee Name     : $name");
  print("Monthly Salary    : ₹$monthlySalary");
  print("Annual Salary     : ₹$annualSalary");
  print("Bonus             : ₹$bonus");
  print("Total Salary      : ₹$totalSalary");
  print("=============================================");
}