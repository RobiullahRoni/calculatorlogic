import 'dart:io';

// TODO: Implement the add function
double add(double a, double b) {
  return a + b;
}

// TODO: Implement the subtract function
double subtract(double a, double b) {
  return a - b;
}

// TODO: Implement the multiply function
double multiply(double a, double b) {
  return a * b;
}

// TODO: Implement the divide function with zero check
double divide(double a, double b) {
  if (b == 0) {
    print('Error: Division by zero is not allowed.');
    return double.nan; // Not a Number
  }
  return a / b;
}

void main() {
  print('=== Dart Console Calculator ===');

  // Prompt user for first number
  print('Enter first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  // Prompt user for operator
  print('Enter operator (+, -, *, /):');
  String operator = stdin.readLineSync()!;

  // Prompt user for second number
  print('Enter second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  double result = 0.0;
  bool isValid = true;

  // Use switch-case to determine which function to call
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
