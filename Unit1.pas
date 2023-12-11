unit Unit1;

interface

function main(num: integer): string;

implementation

uses System.SysUtils;

function main(num: integer): string;
begin
  if (0 >= num)or(num > 100) then
    Exit('Error');
  if num mod 15 = 0 then
    result := 'FizzBuzz'
  else if num mod 3 = 0 then
    result := 'Fizz'
  else if num mod 5 = 0 then
    result := 'Buzz'
  else
    result := num.toString;
end;

end.
