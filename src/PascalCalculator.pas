program PascalCalculator;

uses Calculator;

var
  num1, num2: Double;
  operation: Char;
  result: Double;

begin
  WriteLn('Enter first number:');
  ReadLn(num1);
  WriteLn('Enter second number:');
  ReadLn(num2);
  WriteLn('Enter operation (+, -, *, /):');
  ReadLn(operation);
  result := Calculate(num1, num2, operation);
  WriteLn('Result: ', result);
end.
