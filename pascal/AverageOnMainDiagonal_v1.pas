program DiagonalAverage;
uses crt;

const
  N = 5;  {��������� ������� (����� ������)}

var
  matrix: array[1..N, 1..N] of Integer;
  sum, i,j: Integer;
  avg: Real;
  

begin
  {���������� ������� ����������}
  WriteLn('������ �������� �������:');
  for i := 1 to N do
    for j := 1 to N do
    begin
      Write('matrix[', i, ',', j, ']: ');
      ReadLn(matrix[i, j]);
    end;

  {���������� ���� �������� �� ������� �������}
  sum := 0;
  for i := 1 to N do
    sum := sum + matrix[i, i];

  {���������� ���������� �������������}
  avg := sum / N;

  {��������� ����������}
  WriteLn('������ ����������� �������� �� ������� �������: ', avg:0:2);
end.
