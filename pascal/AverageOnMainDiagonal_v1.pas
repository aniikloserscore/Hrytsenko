program DiagonalAverage;
uses crt;

const
  N = 5;  {Розмірність матриці (можна змінити)}

var
  matrix: array[1..N, 1..N] of Integer;
  sum, i,j: Integer;
  avg: Real;
  

begin
  {Заповнення матриці елементами}
  WriteLn('Введіть елементи матриці:');
  for i := 1 to N do
    for j := 1 to N do
    begin
      Write('matrix[', i, ',', j, ']: ');
      ReadLn(matrix[i, j]);
    end;

  {Обчислення суми елементів на головній діагоналі}
  sum := 0;
  for i := 1 to N do
    sum := sum + matrix[i, i];

  {Обчислення середнього арифметичного}
  avg := sum / N;

  {Виведення результату}
  WriteLn('Середнє арифметичне елементів на головній діагоналі: ', avg:0:2);
end.
