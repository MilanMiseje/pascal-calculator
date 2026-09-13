unit Calculator;

{$mode objfpc}


interface

uses
    SysUtils;
type
    ECalculatorError = class(Exception);
    EDivisionByZero = class(ECalculatorError);
    EInvalidOperation = class(ECalculatorError);

function Calculate(num1, num2: Double; operation: Char): Double;


implementation

// Function to perform addition
function Add(num1, num2: Double): Double;
begin
    Result := num1 + num2;
end;

// Function to perform subtraction
function Subtract(num1, num2: Double): Double;
begin
    Result := num1 - num2;
end;

// Function to perform multiplication
function Multiply(num1, num2: Double): Double;
begin
    Result := num1 * num2;
end;

// Function to perform division
function Divide(num1, num2: Double): Double;
begin
    if num2 = 0 then
        raise EDivisionByZero.Create('Division by zero is not allowed.');
    Result := num1 / num2;
end;

// Function to perform the calculation based on the operation
function Calculate(num1, num2: Double; operation: Char): Double;
begin
    case operation of
        '+': Result := Add(num1, num2);
        '-': Result := Subtract(num1, num2);
        '*': Result := Multiply(num1, num2);
        '/': Result := Divide(num1, num2);
    else
        raise EInvalidOperation.Create('Invalid operation. Please use +, -, *, or /.');
    end;
end;

end.
