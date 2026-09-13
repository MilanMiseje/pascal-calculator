program TestRunner;

{$mode objfpc}{$H+}

uses
    ConsoleTestRunner,
    CalculatorTest;

var
    Application: TTestRunner;

begin
    Application := TTestRunner.Create(nil);
    try
        Application.Initialize;
        Application.Run;
    finally
        Application.Free;
    end;
end.
