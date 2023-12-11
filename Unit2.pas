unit Unit2;

interface

uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TMyTestObject = class
  public
    [TestCase('CaseA', '3,Fizz')]
    procedure Test_fizz‚Ì•\¦(const Value: integer; const _Result: string);
    [TestCase('”’l‚ğ•Ô‚·', '1,1')]
    [TestCase('return FizzBuzz', '15,FizzBuzz')]
    procedure test(const Value: integer; const _Result: string);
  end;

implementation

{ TMyTestObject }

uses Unit1;

procedure TMyTestObject.test(const Value: integer; const _Result: string);
var
  R: string;
begin
  R := main(Value);
  Assert.AreEqual(R, _Result);
end;

procedure TMyTestObject.Test_fizz‚Ì•\¦(const Value: integer;
  const _Result: string);
var
  R: string;
begin
  R := main(Value);
  Assert.AreEqual(R, _Result);
end;

initialization

TDUnitX.RegisterTestFixture(TMyTestObject);

end.
