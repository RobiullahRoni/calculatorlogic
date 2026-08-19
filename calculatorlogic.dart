import 'dart:io';

double add(double a, double b) {
  return a + b;
}

double subtract(double a, double b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}

double divide(double a, double b) {
  if (b == 0) {
    print('Error: Division by zero is not allowed.');
    return double.nan; // Not a Number
  }
  return a / b;
}

void main() {
  print('=== Dart Console Calculator ===');
  print('Enter first number:');
  double num1 = double.parse(stdin.readLineSync()!);
  print('Enter operator (+, -, *, /):');
  String operator = stdin.readLineSync()!;
  print('Enter second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  double result = 0.0;
  bool isValid = true;

  switch (operator) {
    case '+':
      result = add(num1, num2);
      break;
    case '-':
      result = subtract(num1, num2);
      break;
    case '*':
      result = multiply(num1, num2);
      break;
    case '/':
      result = divide(num1, num2);
      break;
    default:
      print('Invalid operator!');
      isValid = false;
  }

  if (isValid && !result.isNaN) {
    print('Result: $num1 $operator $num2 = $result');
  }
}
