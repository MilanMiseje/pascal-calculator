unit CalculatorTest;

{$mode objfpc}{$H+}


interface

uses
    Calculator,
    FPCUnit, TestRegistry;

type
    TCalculatorTest = class(TTestCase)
    published
        procedure TestAddition;
        procedure TestSubtraction;
        procedure TestMultiplication;
        procedure TestDivision;
        procedure TestDivisionByZero;
        procedure TestInvalidOperation;
    end;


implementation

procedure TCalculatorTest.TestAddition;
begin
    AssertEquals(5.0, Calculator.Calculate(2.0, 3.0, '+'));
end;

procedure TCalculatorTest.TestSubtraction;
begin
    AssertEquals(-1.0, Calculator.Calculate(2.0, 3.0, '-'));
end;

procedure TCalculatorTest.TestMultiplication;
begin
    AssertEquals(6.0, Calculator.Calculate(2.0, 3.0, '*'));
end;

procedure TCalculatorTest.TestDivision;
begin
    AssertEquals(2.0, Calculator.Calculate(6.0, 3.0, '/'));
end;

procedure TCalculatorTest.TestDivisionByZero;
begin
    try
        Calculator.Calculate(6.0, 0.0, '/');
        Fail('Expected exception for division by zero not raised.');
    except
        on E: EDivisionByZero do
            AssertEquals('Division by zero is not allowed.', E.Message);
    end;
end;

procedure TCalculatorTest.TestInvalidOperation;
begin
    try
        Calculator.Calculate(6.0, 3.0, '^');
        Fail('Expected exception for invalid operation not raised.');
    except
        on E: EInvalidOperation do
            AssertEquals('Invalid operation. Please use +, -, *, or /.', E.Message);
    end;
end;

initialization
    RegisterTest(TCalculatorTest);

end.
